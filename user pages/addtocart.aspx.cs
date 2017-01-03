using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class user_pages_addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            listfill();
           
        }
    }

  
    dal d = new dal();
    bal b = new bal();
    private void listfill()
    {
        b.email = Session["user"].ToString();
        gvcartdetails.DataSource = d.select_cart(b);
        gvcartdetails.DataBind();
    }

    protected void gvcartdetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       int cart_id = Convert.ToInt16(gvcartdetails.DataKeys[0].Value);
        Label pid = (Label)gvcartdetails.Rows[0].FindControl("lbproduct_id");

   //     int cart_id = Convert.ToInt16(e.CommandArgument.ToString());
         
        if(e.CommandName=="remove")
        {
            cart_id = Convert.ToInt16(e.CommandArgument.ToString());
            b.cart_id = cart_id;
            d.cart_delete(b);

            listfill();
          
             if(Session["user"]!=null)
             {
                 b.email=Session["user"].ToString();
                 int count = d.getcount(b);

                 int lbcount = count--;
                 Master.count.Text = lbcount.ToString();
                  
                
            
             }
             

           
        }
        if(e.CommandName=="buy")
        {
       
            if (Session["user"] != null)
            {
                Session["product_id"] = pid.Text;
         
                Response.Redirect("~/user pages/billingproduct.aspx");
            }
            else
            {
                Response.Write("<script>alert('Dear customer ..!<br/>first you have to login please');</script>");
                Response.Redirect("~/Login.aspx");
            }
        }
    }
    
}