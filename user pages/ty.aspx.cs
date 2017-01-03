using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_ty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Session["user"].ToString();

        string s1 = s.Substring(0, s.IndexOf("@"));
        Label1.Text = s1;  
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user pages/v_product.aspx");
    }
    bal b = new bal();
    dal d = new dal();


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("traceorder.aspx");
    }
}