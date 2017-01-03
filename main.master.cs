using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillddl();
        }
    }
    dal d = new dal();
    bal b = new bal();
    private void fillddl()
    {
        DropDownList1.DataSource = d.select_category();
        DropDownList1.DataTextField = "cat_name";
        DropDownList1.DataValueField = "cat_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0,new ListItem("Search Category","0"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void btnsrch_Click(object sender, EventArgs e)
    {
        Session["catname"] = DropDownList1.SelectedValue;
        Response.Redirect("~/user pages/search.aspx"); 
    
    }
}
