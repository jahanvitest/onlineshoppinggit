using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_city : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlbind();
            gridbind();
        }
    }
    bal b = new bal();
    dal d = new dal();
    private void gridbind()
    {
        GridView1.DataSource = d.select_city();
        GridView1.DataBind();
    }

    private void ddlbind()
    {
        ddlstate.DataSource = d.select_state();
        ddlstate.DataTextField = "sname";
        ddlstate.DataValueField = "s_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0,new ListItem("--select state--","0"));

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.cname = txtcity.Text;
        b.fks_id =Convert.ToInt16(ddlstate.SelectedValue);
        d.insert_city(b);
        Response.Write("<script>alert('city inserted successfully');</script>");
        txtcity.Text = "";
        gridbind();


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("lnsid");
        b.c_id = Convert.ToInt16(cid.Text);
        d.delete_city(b);
        Response.Write("<script>alert('city deleted successfully');</script>");
       
        gridbind();

    }
}