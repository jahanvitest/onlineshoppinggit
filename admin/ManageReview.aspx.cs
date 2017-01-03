using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ManageReview : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    review robj = new review();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillgrid();
            isachieve();
        }
    }

    private void isachieve()
    {
        int feedid = Convert.ToInt16(gvcartdetails.DataKeys[0].Value);
        b.f_id =feedid;
        var data = db.reviews.Single(id => id.f_id == feedid);
        data.isachieve = true;
        db.SubmitChanges();
        fillgrid();
    }
    dal d = new dal();
    bal b = new bal();
    private void fillgrid()
    {
        gvcartdetails.DataSource = d.select_review();
        gvcartdetails.DataBind();
    }
    protected void gvcartdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvcartdetails.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void gvcartdetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int feedid = Convert.ToInt16(gvcartdetails.DataKeys[e.RowIndex].Value);
        b.f_id = feedid;
        d.delete_review(b);
        fillgrid();
    }
  
}