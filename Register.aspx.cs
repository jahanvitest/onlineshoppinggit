using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlbindcon();
            txtregisterdate.Text = System.DateTime.Now.ToShortDateString();
        }
    }

    private void ddlbindcon()
    {
        ddlcountry.DataSource = d.select_country();
        ddlcountry.DataTextField = "con_name";
        ddlcountry.DataValueField = "con_id";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0, new ListItem("--select country--", "0"));

        ddlstate.Items.Insert(0, new ListItem("--select state--", "0"));
        ddlcity.Items.Insert(0, new ListItem("--select city--", "0"));
       
    }
    bal b = new bal();
    dal d = new dal();

    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
       b.fkcon_id = Convert.ToInt16(ddlcountry.SelectedValue);
     // b.fkcon_id = conid;
      ddlstate.DataSource = d.select_statebycountry(b);
      ddlstate.DataTextField = "sname";
      ddlstate.DataValueField = "s_id";
      ddlstate.DataBind();
    //  ddlcountry.Items.Insert(0, new ListItem("--select city--", "0"));
     //ddlcountry.Items.Insert(0, new ListItem("--select state--", "0"));
    


    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        b.fks_id = Convert.ToInt16(ddlstate.SelectedValue);
        ddlcity.DataSource = d.select_citybystate(b);
        ddlcity.DataTextField = "cname";
        ddlcity.DataValueField = "c_id";
        ddlcity.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        b.fname = txtfname.Text;
        b.lnm = txtlname.Text;
        b.email = txtmail.Text;
        b.pass = txtpass.Text;
        b.conpass = txtconpass.Text;

        b.gender = RadioButtonList1.SelectedItem.Text;

        b.registerdate = Convert.ToDateTime(txtregisterdate.Text);
        b.dob =Convert.ToDateTime(txtbirthdate.Text);
        b.address = txtaddress.Text;
        b.addinfo = txtaddinfo.Text;
        b.conno = txtno.Text;
        b.zip = Convert.ToInt32(txtzip.Text);
        b.fkcon_id= Convert.ToInt16(ddlcountry.SelectedValue);

        b.fks_id = Convert.ToInt16(ddlstate.SelectedValue);
        b.fkc_id = Convert.ToInt16(ddlcity.SelectedValue);
      
      
        b.role = "U";
        d.insert_register(b);
        Response.Write("<script>alert('Registration successfully done');</script>");
        txtaddinfo.Text = txtaddress.Text = txtbirthdate.Text = txtconpass.Text = txtfname.Text = txtlname.Text = txtmail.Text = txtno.Text = txtpass.Text = txtzip.Text = "";
        Response.Redirect("Login.aspx");
    }
}

