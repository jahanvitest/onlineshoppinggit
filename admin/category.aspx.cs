using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }
    bal b = new bal();
    dal d = new dal();
    private void bindgrid()
    {
        GridView1.DataSource = d.select_category();
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.categoryname=txtcategory.Text;

        int r =d.check_category(b);
        if(r<=0)
        {
            d.insert_category(b);
            Response.Write("<script>alert('category inserted successfully');</script>");
            txtcategory.Text = "";
            bindgrid();
        }
        else
        {
            Response.Write("<script>alert('category already exits.');</script>");
        }

       
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label catid = (Label)GridView1.Rows[e.RowIndex].FindControl("lbcatid");
        b.cat_id = Convert.ToInt16(catid.Text);
        d.delete_category(b);
        Response.Write("<script>alert('category deleted successfully');</script>");
        bindgrid();
    }
}