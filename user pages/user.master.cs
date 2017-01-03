using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            updateimg();
                fillddl();
          
            if(Session["user"]==null )
            {
                lbcart.Text = "(0)";
            }
            else
            {
                 b.email = Session["user"].ToString();
                 int count = d.getcount(b);
                 lbcart.Text = "(" + count + ")";
            }
         
               // string s = Session["user"].ToString();   
        }
    }
    public Label count
    {
        get { return lbcart; }
        set { lbcart = value; }
    }
    dal d = new dal();
    bal b = new bal();
    private void fillddl()
    {
        DropDownList1.DataSource = d.select_category();
        DropDownList1.DataTextField = "cat_name";
        DropDownList1.DataValueField = "cat_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Search Category--", "0"));
  
    }

    private void updateimg()
    {
        Random ran = new Random();
        int i = ran.Next(1, 5);
        Image1.ImageUrl = "~/themes/images/" + i.ToString() + ".jpg";

        
    }

    protected void image_Tick(object sender, EventArgs e)
    {
        updateimg();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
   
      }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Session.Abandon();

        Response.Redirect("~/Login.aspx");
    }
    protected void btnsrch_Click(object sender, EventArgs e)
    {
        Session["catname"] = DropDownList1.SelectedValue;
        Response.Redirect("~/user pages/search.aspx"); 
    }
}
