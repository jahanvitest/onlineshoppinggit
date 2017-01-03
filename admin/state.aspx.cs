using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class city : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlbind();
            gridbind();
        }
    }

    private void gridbind()
    {
        GridView1.DataSource = d.select_state();
        GridView1.DataBind();
    }
    bal b = new bal();
    dal d = new dal();
    private void ddlbind()
    {
        ddlcountry.DataSource = d.select_country();
        ddlcountry.DataTextField = "con_name";
        ddlcountry.DataValueField = "con_id";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0,new ListItem("--select country--","0"));
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.sname = txtcity.Text;
        b.fkcon_id = Convert.ToInt16(ddlcountry.SelectedValue);
        d.insert_state(b);
        Response.Write("<script>alert('state inserted successfully');</script>");
        txtcity.Text = "";
        gridbind();

        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label sid = (Label)GridView1.Rows[e.RowIndex].FindControl("lnsid");
        b.sid = Convert.ToInt16(sid.Text);
        d.delete_city(b);
        Response.Write("<script>alert('state deleted successfully');</script>");
     
        gridbind();
    }
}