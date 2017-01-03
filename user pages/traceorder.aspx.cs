using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_traceorder : System.Web.UI.Page
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
        b.email = Session["user"].ToString();
        gvcartdetails.DataSource = d.user_purchase(b);
        gvcartdetails.DataBind();

    }
}