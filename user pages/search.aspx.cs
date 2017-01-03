using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             listbond();
        }
    }
    dal d = new dal();
    bal b = new bal();
    private void listbond()
    {
        b.fkcat_id =Convert.ToInt16(Session["catname"].ToString());
        dbproduct.DataSource = d.search_product(b);
        dbproduct.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton pimg = (ImageButton)sender;
        DataListItem item = (DataListItem)pimg.NamingContainer;
        Label pnm = (Label)item.FindControl("Label1");
        Session["product"] = pnm.Text;
        Response.Redirect("~/user pages/productdetail.aspx");
    }
}