using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
         if(!IsPostBack)
         {
             con.Open();
         }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Close();
            con.Open();
            da = new SqlDataAdapter("select email,pass from register where email='" + Session["user"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            con.Close();
            string email = Session["user"].ToString();
            string pass = dt.Rows[0]["pass"].ToString();
            if (pass == TextBox1.Text)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    con.Open();
                    cmd = new SqlCommand("update register set pass='" + TextBox2.Text + "' where email='" + email + "'", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('password updated successfully');</script>");
                    TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
                }
                else
                {
                    Response.Write("password not match");

                }
            }
            else
            {
                Response.Write("wrong old password");

            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);

        }
        finally
        {
            con.Close();
        }

    }
}