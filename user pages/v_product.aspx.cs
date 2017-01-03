using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class v_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {   listfill();


        }

    }
    dal d = new dal();
    bal b = new bal();
    private void listfill()
    {
        dbproduct.DataSource = d.select_product();
        dbproduct.DataBind();
    }
    protected void dbproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        
         
    }
    protected void dbproduct_ItemCommand(object source, DataListCommandEventArgs e)
    {

        //if (e.CommandName == "prodetails") // check commandname here
        //{
        //    int index = e.Item.ItemIndex;
        //    Label lbl = (Label)dbproduct.Items[index].FindControl("Label1");
        //    Session["product"]= lbl.Text;
        //    // your code
        //} 
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       ImageButton btn = (ImageButton)sender;
        DataListItem item = (DataListItem)btn.NamingContainer;
        Label lblId = (Label)item.FindControl("Label1");
        
       
        Session["product"] = lblId.Text;
        Response.Redirect("~/user pages/productdetail.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //LinkButton btn = (LinkButton)sender;
        //DataListItem item = (DataListItem)btn.NamingContainer;
        //Label lblId = (Label)item.FindControl("Label1");
        //Session["product"] = lblId.Text;
       
    }
}