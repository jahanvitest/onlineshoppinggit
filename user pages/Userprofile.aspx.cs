using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_pages_Userprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string s = Session["user"].ToString();
            string s1 = s.Substring(0,s.IndexOf("@"));
            Label13.Text = " Welcome : " + s1;        
                filldetail();
        }
    }
    bal b = new bal();
    dal d = new dal();
    private void filldetail()
    {
        b.email = Session["user"].ToString();

        DVUser.DataSource = d.select_register(b);
        DVUser.DataBind();
      //  ViewState["cid"] = dt.Rows[0]["con_id"].ToString();
    }
    
    protected void DVUser_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DVUser.PageIndex = e.NewPageIndex;
        filldetail();
    }
    protected void DVUser_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DVUser.ChangeMode(e.NewMode);
        filldetail();
        if (DVUser.CurrentMode == DetailsViewMode.Edit)
        {
            DropDownList dlstate = (DropDownList)DVUser.Rows[11].FindControl("DropDownList3");
            DropDownList dlcity = (DropDownList)DVUser.Rows[9].FindControl("DropDownList4");
       
            DropDownList ddlcountry = (DropDownList)DVUser.FindControl("DropDownList2");

          


            ddlcountry.DataSource = d.select_country();
            ddlcountry.DataTextField = "con_name";
            ddlcountry.DataValueField = "con_id";
            ddlcountry.DataBind();
           ddlcountry.Items.Insert(0, new ListItem("--select country--", "0"));
            dlstate.Items.Insert(0, new ListItem("--select state--", "0"));
            dlcity.Items.Insert(0, new ListItem("--select city--", "0"));
        }
       
        
       
       
    }
    protected void DVUser_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        Label uid = (Label)DVUser.FindControl("lbuid");
      //  Label gen = (Label)DVUser.FindControl("Label4");
        b.user_id = Convert.ToInt16(uid.Text);
        TextBox fnm = (TextBox)DVUser.FindControl("TextBox1");
        TextBox lnm = (TextBox)DVUser.FindControl("TextBox2");
        TextBox email = (TextBox)DVUser.FindControl("TextBox3");
       // RadioButtonList rdogen = (RadioButtonList)DVUser.FindControl("RadioButtonList1");
        TextBox dob = (TextBox)DVUser.FindControl("TextBox4");
       // TextBox rgdate = (TextBox)DVUser.FindControl("TextBox5");
        TextBox address = (TextBox)DVUser.FindControl("TextBox6");
        TextBox conno = (TextBox)DVUser.FindControl("TextBox7");
        TextBox zip = (TextBox)DVUser.FindControl("TextBox8");
        DropDownList dlcountry = (DropDownList)DVUser.FindControl("DropDownList2");
       
         DropDownList dlstate = (DropDownList)DVUser.FindControl("DropDownList4");
         DropDownList dlcity = (DropDownList)DVUser.FindControl("DropDownList3");
        b.fname = fnm.Text;
        b.lnm = lnm.Text;
        b.email = email.Text;
        //b.gender = gen.Text;
        b.dob =Convert.ToDateTime(dob.Text);
     //   b.registerdate =Convert.ToDateTime(rgdate.Text);
        b.address = address.Text;
        b.conno = conno.Text;
        b.zip = Convert.ToInt32(zip.Text);
        b.fkcon_id = Convert.ToInt16(dlcountry.SelectedValue);
        b.fks_id = Convert.ToInt16(dlstate.SelectedValue);
   
        b.fkc_id = Convert.ToInt16(dlcity.SelectedValue);
     
   
        d.update_register(b);
        DVUser.ChangeMode(DetailsViewMode.ReadOnly);
        filldetail();
        Response.Write("<script>alert('profile updated successfully ');</script>");
      
        


    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList dlcountry = (DropDownList)DVUser.Rows[8].FindControl("DropDownList2");
        DropDownList dlcity = (DropDownList)DVUser.Rows[9].FindControl("DropDownList4");
        DropDownList dlstate = (DropDownList)DVUser.Rows[11].FindControl("DropDownList3");
      
        b.fks_id = Convert.ToInt16(dlstate.SelectedValue);
        dlcity.DataSource = d.select_citybystate(b);
        dlcity.DataTextField = "cname";
        dlcity.DataValueField = "c_id";
        dlcity.DataBind();
      

    }
    
    protected void DVUser_DataBound(object sender, EventArgs e)
    {

      
    }
  
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList dlcountry = (DropDownList)DVUser.Rows[8].FindControl("DropDownList2");
        DropDownList dlcity = (DropDownList)DVUser.Rows[9].FindControl("DropDownList4");
        DropDownList dlstate = (DropDownList)DVUser.Rows[11].FindControl("DropDownList3");

        b.fkcon_id = Convert.ToInt16(dlcountry.SelectedValue);
        dlstate.DataSource = d.select_statebycountry(b);
        dlstate.DataTextField = "sname";
        dlstate.DataValueField = "s_id";
        dlstate.DataBind();
     

        
    }
}