using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Gridbind();
            ddlbind();

        }
    }

    private void Gridbind()
    {
        Gridproduct.DataSource = d.select_product();
        Gridproduct.DataBind();
    }
    bal b = new bal();
    dal d = new dal();
    private void ddlbind()
    {
        DropDownList1.DataSource = d.select_category();
        DropDownList1.DataTextField = "cat_name";
        DropDownList1.DataValueField = "cat_id";
        DropDownList1.DataBind();

        DropDownList1.Items.Insert(0,new ListItem("--select category--","0"));
        DropDownList2.Items.Insert(0, new ListItem("--select category--", "0"));

    }

  
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        b.fkcat_id=Convert.ToInt16(DropDownList1.SelectedValue);
        DropDownList2.DataSource = d.select_subcategory(b);
        DropDownList2.DataTextField = "scat_name";
        DropDownList2.DataValueField = "scat_id";
        DropDownList2.DataBind();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        b.fkcat_id = (Convert.ToInt16(DropDownList1.SelectedValue));
       b.proname = txtpname.Text;
        b.proprice = txtpprice.Text;
       
        b.procode = Convert.ToInt16(txtpcode.Text);
         b.prodetail = txtpdtil.Text;
        if(FileUpload1.HasFile)
        {

            string p = "~/img/" + FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(Server.MapPath(p));
            b.proimg = p;

        }
        else
        {
            Response.Write("file not found");
        }
          b.fkscat_id = (Convert.ToInt16(DropDownList2.SelectedValue));
        b.stock = Convert.ToInt16(txtpstock.Text);
   
        d.insert_product(b);
    
        Response.Write("<script>alert('Data inserted successfully');</script>");
        Gridbind();
        txtpcode.Text = txtpdtil.Text = txtpname.Text = txtpprice.Text = txtpstock.Text = "";
        
    }
    protected void Gridproduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        for(int i=0;i<Gridproduct.Rows.Count;i++)
        {
            CheckBox delcheck = (CheckBox)Gridproduct.Rows[i].FindControl("CheckBox1");
            if(delcheck!=null)
            {
                if(delcheck.Checked)
                {
                    Label pid = (Label)Gridproduct.Rows[i].FindControl("Label1");
                    b.product_id = Convert.ToInt16(pid.Text);

                    d.delete_product(b);
                    Response.Write("<script>alert('Data Deleted successfully');</script>");

              
                }
            }
            else
            {
                Response.Write("<script>alert('Data Deleted failed');</script>");

      
            }
        }
        Gridbind();
    }
    //protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    //{
    //    CheckBox check1 = (CheckBox)Gridproduct.HeaderRow.FindControl("CheckBox2");
    //    if(check1.Checked==true)
    //    {
    //        for (int i = 0; i < Gridproduct.Rows.Count; i++)
    //        {
    //            CheckBox delcheck = (CheckBox)Gridproduct.Rows[i].FindControl("CheckBox1");
    //            delcheck.Checked = true;
    //        }
    //    }
    //    if (check1.Checked == false)
    //    {
    //        for (int i = 0; i < Gridproduct.Rows.Count; i++)
    //        {
    //            CheckBox delcheck = (CheckBox)Gridproduct.Rows[i].FindControl("CheckBox1");
    //            delcheck.Checked = false;
    //        }
    //    }
    //}
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
    {
        CheckBox check1 = (CheckBox)Gridproduct.HeaderRow.FindControl("CheckBox2");
        if (check1.Checked == true)
        {
            for (int i = 0; i < Gridproduct.Rows.Count; i++)
            {
                CheckBox delcheck = (CheckBox)Gridproduct.Rows[i].FindControl("CheckBox1");
                delcheck.Checked = true;
            }
        }
        if (check1.Checked == false)
        {
            for (int i = 0; i < Gridproduct.Rows.Count; i++)
            {
                CheckBox delcheck = (CheckBox)Gridproduct.Rows[i].FindControl("CheckBox1");
                delcheck.Checked = false;
            }
        }
    }
    protected void Gridproduct_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Gridproduct.EditIndex = e.NewEditIndex;
            Gridbind();
    }
    protected void Gridproduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label pid = (Label)Gridproduct.Rows[e.RowIndex].FindControl("Label1");
        TextBox pnm = (TextBox)Gridproduct.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox pcode = (TextBox)Gridproduct.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox pprice = (TextBox)Gridproduct.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox stock = (TextBox)Gridproduct.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox pdetail = (TextBox)Gridproduct.Rows[e.RowIndex].FindControl("TextBox5");
        FileUpload file = (FileUpload)Gridproduct.Rows[e.RowIndex].FindControl("FileUpload2");
        b.product_id = Convert.ToInt16(pid.Text);
        b.proname = pnm.Text;
        b.proprice = pprice.Text;
        b.procode =   Convert.ToInt16(pcode.Text);
        b.stock = Convert.ToInt16(stock.Text);
        b.prodetail = pdetail.Text;
      
       if (file.HasFile)
        {
            string p = "~/img/"+file.PostedFile.FileName;
            file.SaveAs(Server.MapPath( p));
            b.proimg = p;
       }
        else
        {
            Response.Write("file not selected"); 
        }
        d.update_product(b);
        Response.Write("<script>alert('Data  successfully  Updated');</script>");
        Gridproduct.EditIndex = -1;
        Gridbind();

    }
    protected void Gridproduct_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Gridproduct.EditIndex = -1;
        Gridbind();
    }
}