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

public partial class user_pages_enterotp : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    tblotp tbloptobject = new tblotp();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

          
            //int textotp = Convert.ToInt16(txtotp.Text);

            //if(otp==textotp)
            //{
            //    Response.Write("<script>alert('Not valid otp');</script>");
            //}
            //else
            //{ 
            //}
          

          
        }
    }
    bal b = new bal();
    protected void lbotp_Click(object sender, EventArgs e)
    {
        //try
        //{
       
        //    da = new SqlDataAdapter("select conno from register ", con);
      

        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    {
        //        for (int i = 0; i < dt.Rows.Count; i++)
        //        {


        //            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=jahanvikumpavat@gmail.com:2657&senderID=TEST SMS&receipientno=" + dt.Rows[i]["conno"].ToString() + "&msgtxt=This is a test from mVaayoo API&state=4";
        //            WebRequest request = HttpWebRequest.Create(strUrl);
        //            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        //            Stream s = (Stream)response.GetResponseStream();
        //            StreamReader readStream = new StreamReader(s);
        //            string dataString = readStream.ReadToEnd();
        //            response.Close();
        //            s.Close();
        //            readStream.Close();
        //        }
        //    }
        //}
        //catch(Exception ex)
        //{
        //    Response.Write(ex.Message);
        //}
       int otp = Convert.ToInt32(Session["otp"].ToString());

       int textotp = Convert.ToInt32(txtotp.Text);

        if(otp==textotp)
        {
            tbloptobject.otp = Convert.ToInt32(txtotp.Text);
            db.tblotps.InsertOnSubmit(tbloptobject);
            db.SubmitChanges();
            Response.Redirect("~/user pages/ty.aspx");

            
        }
        else
        {
            Response.Write("<script>alert('Not valid otp');</script>");       
        }
          
     
       
    }
}
       
