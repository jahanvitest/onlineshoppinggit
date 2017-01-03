using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_billingproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    SqlDataAdapter da;
    DataTable dt;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            da = new SqlDataAdapter("select r.fname,r.conno,r.email,r.address,r.zip,c.cname from register r inner join city c on r.fkc_id=c.c_id where email='" + Session["user"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            TextBox1.Text = dt.Rows[0]["fname"].ToString();
            TextBox2.Text = dt.Rows[0]["conno"].ToString();
            TextBox6.Text = dt.Rows[0]["email"].ToString();
            TextBox3.Text = dt.Rows[0]["address"].ToString();
            TextBox4.Text = dt.Rows[0]["zip"].ToString();
            TextBox5.Text = dt.Rows[0]["cname"].ToString();
            da.Fill(dt);

        }
    }
    bal b = new bal();
    dal d = new dal();
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
    
        b.fkproduct_id = Convert.ToInt16(Session["product_id"].ToString());
      //  b.fkoid =Convert.ToInt16 (Session["cart_id"].ToString());
        b.email = Session["user"].ToString();
        d.insert_payment(b);
        string num = "0123456789";
        int len = num.Length;
        string otp = string.Empty;
        int otpdigit = 5;
        string finaldigit;
        int getindex;
        for (int i = 0; i < otpdigit; i++)
        {
            do
            {

                getindex = new Random().Next(0, len);
                finaldigit = num.ToCharArray()[getindex].ToString();


            } while (otp.IndexOf(finaldigit) != -1);
            otp += finaldigit;
        }


        try
        {





            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=jahanvikumpavat@gmail.com:2657&senderID=TEST SMS&receipientno=" + TextBox2.Text + "&msgtxt=" + otp + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        Session["otp"] = otp;
        Response.Redirect("~/user pages/enterotp.aspx");
    }
}
               