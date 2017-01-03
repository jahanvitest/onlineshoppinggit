using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_country : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
             if(!IsPostBack)
             {
                 bindgrid();
             }
    }

    private void bindgrid()
    {
        GridView1.DataSource = d.select_country();
        GridView1.DataBind();
    }
    bal b = new bal();
    dal d = new dal();
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        b.conname = txtcountry.Text;
        d.insert_country(b);
        Response.Write("<script>alert('Country inserted successfully');</script>");
        bindgrid();
        txtcountry.Text = "";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label conid = (Label)GridView1.Rows[e.RowIndex].FindControl("lnconid");
        b.con_id = Convert.ToInt16(conid.Text);
            d.delete_country(b);
            Response.Write("<script>alert('Country deleted successfully');</script>");
            bindgrid();
       
    }
}