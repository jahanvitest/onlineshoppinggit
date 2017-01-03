using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataReader dr;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            detailbind();

        }
    }
    dal d = new dal();
    bal b = new bal();
       private void detailbind()
       {
           b.proname = Session["product"].ToString();
          detailproduct.DataSource = d.select_productbyname(b);
           detailproduct.DataBind();
       }
       protected void LinkButton1_Click(object sender, EventArgs e)
       {
        
           //Label price = (Label)DetailsView1.Rows[0].FindControl("Label4");

         

           //int a = Convert.ToInt16(price.Text);
           //int c = Convert.ToInt16(txtqty.Text);

           //int total = a * c;

           //Label1.Text = total.ToString();



       }
       protected void  DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
       {

       }
       protected void TextBox1_TextChanged(object sender, EventArgs e)
       {
           Label total = (Label)detailproduct.Rows[0].FindControl("lbtotal");
           Label pprice = (Label)detailproduct.Rows[1].FindControl("Label4");

           Label stock = (Label)detailproduct.Rows[2].FindControl("Label6");
           TextBox txtqty = (TextBox)detailproduct.Rows[2].FindControl("TextBox1");
           string[] p = pprice.Text.Split('.');
           for (int i = 0; i < p.Length; i++)
           {
               pprice.Text = p[i].ToString();
           }
           string prc = pprice.Text;
           int pr = Convert.ToInt16(pprice.Text);
           int q = Convert.ToInt16(txtqty.Text);
           int s = Convert.ToInt16(stock.Text);

           if (q > s)
           {
               Response.Write("<script>alert('Out of stock');</script>");
           }
           else
           {
               decimal t = pr * q;
               total.Visible = true;
               total.Text = t.ToString();
             
           }



       }
       protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
       {

          // Label pid = (Label)DetailsView1.Rows[0].FindControl("lbid");
           Label pprice=(Label)detailproduct.Rows[1].FindControl("Label4");
           TextBox txtqty = (TextBox)detailproduct.Rows[2].FindControl("TextBox1");

           int pid = Convert.ToInt16(detailproduct.DataKey[0].ToString());
           int pr = Convert.ToInt16(pprice.Text);
           int q = Convert.ToInt16(txtqty.Text);
           
          // Image pimg = (Image)DetailsView1.Rows[2].FindControl("Image1");
           if(e.CommandName=="buy")
           {

               if (Session["user"] != null)
               {
                   Session["product_id"] = pid;
                   
                   Response.Redirect("~/user pages/billingproduct.aspx");
               }
               else
               {
                   Response.Write("<script>alert('Dear customer ..!<br/>first you have to login please');</script>");
                   Response.Redirect("~/Login.aspx");
               }
           }
           else
           {

               if (e.CommandName == "cart")
               {
                   if (Session["user"] != null)
                   {

                       b.email = Session["user"].ToString();
                       b.fkproduct_id = pid;
                       int qty = Convert.ToInt16(txtqty.Text);
                       b.qty = qty;
                       decimal t = pr * q;

                       b.total = Convert.ToDecimal(t);
                       b.date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());

                       d.insert_cart(b);

                       d.getcount(b);

                       Response.Redirect("~/user pages/addtocart.aspx");
                   }

                   else
                   {
                       Response.Redirect("~/Login.aspx");
                   }
               }

           }
           //if(e.CommandName=="review")
           //{
           //    Session["product_id"] = pid;
           //    Response.Redirect("~/user pages/userreview.aspx");         
          
           //}
       }

       //public int getcount(string email)
       //{
       //    string norows = "";
       //   // cmd = new SqlCommand("select count(*) from tblcart where refemail=@id",con);
       //    b.email = Session["user"].ToString();
       //  int r=  d.getcount(b);
       //  dt = new DataTable();
       //   if(r>0)
       //    {
       //        norows = dt.rows[0]["count(*)"].ToString();
       //    }
       //   int cart = Convert.ToInt16(norows);
       //   return cart;

          
         
       //}

       

       protected void LinkButton3_Click(object sender, EventArgs e)
       {
           int pid = Convert.ToInt16(detailproduct.DataKey[0].ToString());
           Session["product_id"] = pid;
           Response.Redirect("~/user pages/userreview.aspx");         
       }
}
