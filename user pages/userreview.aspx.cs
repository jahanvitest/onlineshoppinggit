using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_userreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillist();
            rating_changed();
        
        }

    }

    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        rating_changed();
       Response.Write("<script>alert('Thanks for feedback');</script>");

       TextBox1.Text = "";
  

    }
    bal b = new bal();
    dal d = new dal();
    private void rating_changed()
    {
        b.review = TextBox1.Text;
        b.rate = Rating1.CurrentRating;
        lbcountrate.Visible = true;
        lbcountrate.Text = Rating1.CurrentRating.ToString();
        b.date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
        b.fkproduct_id = Convert.ToInt16(Session["product_id"].ToString());
        b.email = Session["user"].ToString();
        b.achieve=false;
        d.insert_review(b);
        
      
    }
    
    //protected void Rating1_Changed1(object sender, AjaxControlToolkit.RatingEventArgs e)
    //{
    //    rating_changed();
    //}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user pages/productdetail.aspx");
    }
    protected void Rating1_Changed1(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        rating_changed();
    }
    private void fillist()
    {
        dlreview.DataSource = d.select_userreview();
        dlreview.DataBind();
    }

    
}