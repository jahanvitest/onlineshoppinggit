using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_subcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlbind();
        }
    }
    bal b = new bal();
    dal d = new dal();
    private void ddlbind()
    {
        ddlcategory.DataSource = d.select_category();
        ddlcategory.DataTextField = "cat_name";
        ddlcategory.DataValueField = "cat_id";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0,new ListItem("--select category--","0"));

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.subcategoryname = txtcat.Text;

        int r = d.check_subcategory(b);
        if (r <= 0)
        {

            b.fkcat_id = Convert.ToInt16(ddlcategory.SelectedValue);
            d.insert_subcategory(b);
            Response.Write("<script>alert('category inserted successfully');</script>");
            txtcat.Text = "";
            bindgrid();
        }
        else
        {
            Response.Write("<script>alert('category already exits.');</script>");
        
        }

    }

    private void bindgrid()
    {
        b.fkcat_id = Convert.ToInt16(ddlcategory.SelectedValue);
        GridView1.DataSource = d.select_subcategory(b);
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label scatid = (Label)GridView1.Rows[e.RowIndex].FindControl("lnsid");
        b.scat_id = Convert.ToInt16(scatid.Text);
        d.delete_subcategory(b);
        Response.Write("<script>alert('category deleted successfully');</script>");
       
        bindgrid();

    }
}