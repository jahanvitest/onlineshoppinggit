using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;

public partial class forgetpass : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(@"Data Source=JAHANVI-PC\SQLEXPRESS;Initial Catalog=shop;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string pass;
    MailMessage msg = new MailMessage();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            mycon.Open();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("select email,pass from register Where email= '" + txtforemail.Text.Trim() + "'", mycon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtforemail.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtforemail.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["email"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["pass"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("jahanvikumpavat@gmail.com", "kishorsinh");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                Response.Write("<script language='javascript'>alert('Message has been sent successfully');</script>");

                // Clear the textbox valuess
                txtforemail.Text = "";
            }



            else
            {
                Response.Write("<script language='javascript'>alert('Email id is not existing');</script>");

            }
        }
        catch(Exception ae)
        {
            Response.Write("cautch exception"+ae.Message);
        }
    }
}
