using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
      
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
             
        }

    }
    bal b = new bal();
    dal d = new dal();
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("select * from register where email=@unm and pass=@pass",con);
        cmd.Parameters.AddWithValue("@unm",txtunm.Text);
        cmd.Parameters.AddWithValue("@pass",txtpass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            if(dt.Rows[0]["role"].ToString()=="A")
            {

                Session["user"] = txtunm.Text;
                Response.Redirect("~/admin/home.aspx");
            }
            else
            {
                Session["user"] = txtunm.Text;
                Response.Redirect("~/user pages/v_product.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password. Please try again.');</script>");
        }

        //b.email = txtunm.Text;
        //b.pass = txtpass.Text;
        //int r = d.login_user(b);
        //if (b.email == "jahanvikumpavat@gmail.com" && b.pass == "papa")
        //{
        //    Session["user"] = txtunm.Text;
        //    Response.Redirect("~/admin/home.aspx");
        //}
        //else

        //if (r >= 1)
        //{
        //    Session["user"] = txtunm.Text;
        //    Response.Redirect("~/user pages/Userprofile.aspx");
        //}
        //else
        //{
           
        //    Response.Write("<script>alert('Incorrect username or password');</script>");

        //}
       
    }
}