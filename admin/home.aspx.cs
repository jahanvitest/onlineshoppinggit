using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if(!IsPostBack)
         {
             string s=Session["user"].ToString();
             string s1 = s.Substring(0, s.IndexOf("."));
             name.Text = "Welcome : "+s1;   
             fillgrid();
         }
    }
    dal d = new dal();
    bal b = new bal();
    private void fillgrid()
    {
        GridView1.DataSource = d.registerwhole();
        GridView1.DataBind();
        Label14.Text = GridView1.Rows.Count.ToString();
        

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label uid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        b.user_id = Convert.ToInt16(uid.Text);
        d.delete_register(b);
        fillgrid();
    }
}