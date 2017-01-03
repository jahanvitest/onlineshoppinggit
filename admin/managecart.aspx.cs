using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_managereview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillgrid();
        }
    }
    dal d = new dal();
    bal b = new bal();
    private void fillgrid()
    {
        gvcartdetails.DataSource = d.select_admincart();
        gvcartdetails.DataBind();
    }
    protected void gvcartdetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="remove")
        {
            int cartid = Convert.ToInt16(gvcartdetails.DataKeys[0].Value);
            b.cart_id = cartid;
            d.cart_delete(b);
            fillgrid();
        }
    }
    
    protected void gvcartdetails_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {

        gvcartdetails.PageIndex = e.NewPageIndex;
        fillgrid();
    }
}