using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dal
/// </summary>
public class dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataTable dt;
	public dal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insert_country(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into country values(@conname)",con);
        cmd.Parameters.AddWithValue("@conname",b.conname);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    
    public DataTable select_country()
    {
        da = new SqlDataAdapter("select * from country",con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void delete_country(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from country where con_id=@id",con);
        cmd.Parameters.AddWithValue("@id",b.con_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void insert_category(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into category values(@catname)",con);
        cmd.Parameters.AddWithValue("@catname",b.categoryname);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable select_category()
    {
        da = new SqlDataAdapter("select * from category", con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public void delete_category(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from category where cat_id=@id", con);
        cmd.Parameters.AddWithValue("@id", b.cat_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
   public void insert_state(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into state values(@nm,@conid) ",con);
        cmd.Parameters.AddWithValue("@nm",b.sname);
        cmd.Parameters.AddWithValue("@conid",b.fkcon_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
   public DataTable select_state()
   {
       da = new SqlDataAdapter("select * from state", con);
       dt = new DataTable();
       da.Fill(dt);
       return dt;
   }
   
   public void delete_state(bal b)
   {
       con.Open();
       cmd = new SqlCommand("delete from state where s_id=@id", con);
       cmd.Parameters.AddWithValue("@id", b.sid);
       cmd.ExecuteNonQuery();
       con.Close();
   }
   public void insert_city(bal b)
   {
       con.Open();
       cmd = new SqlCommand("insert into city values(@cnm,@sid) ", con);
       cmd.Parameters.AddWithValue("@cnm", b.cname);
       cmd.Parameters.AddWithValue("@sid", b.fks_id);
       cmd.ExecuteNonQuery();
       con.Close();
   }
   public DataTable select_city()
   {
       da = new SqlDataAdapter("select * from city", con);
       dt = new DataTable();
       da.Fill(dt);
       return dt;
   }

   public void delete_city(bal b)
   {
       con.Open();
       cmd = new SqlCommand("delete from city where c_id=@id", con);
       cmd.Parameters.AddWithValue("@id", b.c_id);
       cmd.ExecuteNonQuery();
       con.Close();
   }
    public DataTable select_statebycountry(bal b)
   {
       da = new SqlDataAdapter("select * from state where fkcon_id=@id",con);
       da.SelectCommand.Parameters.AddWithValue("@id",b.fkcon_id);
       dt = new DataTable();
       da.Fill(dt);
       return dt;

   }
    public DataTable select_citybystate(bal b)
    {
        da = new SqlDataAdapter("select * from city where fks_id=@id",con);

        da.SelectCommand.Parameters.AddWithValue("@id",b.fks_id);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insert_subcategory(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into subcategory values(@catnm,@cid)",con);
        cmd.Parameters.AddWithValue("@catnm",b.subcategoryname);
        cmd.Parameters.AddWithValue("@cid",b.fkcat_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable select_subcategory(bal b)
    {
        da = new SqlDataAdapter("select * from subcategory where fkcat_id=@id ", con);
        da.SelectCommand.Parameters.AddWithValue("@id",b.fkcat_id);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void delete_subcategory(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from subcategory where scat_id=@id",con);
        cmd.Parameters.AddWithValue("@id",b.scat_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public int check_category(bal b)
    {
        con.Open();
        cmd = new SqlCommand("select count(cat_name) from category where cat_name=@id ",con);
        cmd.Parameters.AddWithValue("@id",b.categoryname);
        int n= Convert.ToInt16( cmd.ExecuteScalar());
        con.Close();
        return n;
        
    }
    public int check_subcategory(bal b)
    {
        con.Open();
        cmd = new SqlCommand("select count(scat_name) from subcategory where scat_name=@id",con);
        cmd.Parameters.AddWithValue("@id",b.subcategoryname);
        int r = Convert.ToInt16(cmd.ExecuteScalar());
        con.Close();
        return r;
    }
    public void insert_product(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into product values(@cat,@pname,@pprice,@pcode,@pdetail,@pimg,@scat,@stock)",con);
        cmd.Parameters.AddWithValue("@cat",b.fkscat_id);
        cmd.Parameters.AddWithValue("@pname", b.proname);
        cmd.Parameters.AddWithValue("@pprice", b.proprice);
        cmd.Parameters.AddWithValue("@pcode", b.procode);
        cmd.Parameters.AddWithValue("@pdetail", b.prodetail);
        cmd.Parameters.AddWithValue("@pimg", b.proimg);
        cmd.Parameters.AddWithValue("@scat", b.fkcat_id);
        cmd.Parameters.AddWithValue("@stock", b.stock);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public DataTable select_product()
    {
        da = new SqlDataAdapter("select * from product",con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable select_productbyname(bal b)
    {
        da = new SqlDataAdapter("select * from product where pro_name=@pnm", con);
        da.SelectCommand.Parameters.AddWithValue("@pnm",b.proname);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void delete_product(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from product where product_id=@id",con);
        cmd.Parameters.AddWithValue("@id",b.product_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void update_product(bal b)
    {
        con.Open();
        cmd = new SqlCommand("update product set pro_name=@pnm,pro_price=@pprice,pro_code=@pcode,pro_details=@pdet,pro_image=@pimg,stock=@sk where product_id=@id",con);
        cmd.Parameters.AddWithValue("@pnm",b.proname);
        cmd.Parameters.AddWithValue("@pprice",b.proprice);
        cmd.Parameters.AddWithValue("@pcode",b.procode);
        cmd.Parameters.AddWithValue("@pdet",b.prodetail);
        cmd.Parameters.AddWithValue("@pimg",b.proimg);
        cmd.Parameters.AddWithValue("@sk",b.stock);
        cmd.Parameters.AddWithValue("@id",b.product_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void insert_register(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into register values(@fnm,@lnm,@mail,@pass,@cpass,@gen,@dob,@rdate,@add,@addinfo,@conno,@zip,@contry,@state,@city,@role) ", con);
        cmd.Parameters.AddWithValue("@fnm",b.fname);
        cmd.Parameters.AddWithValue("@lnm",b.lnm);
        cmd.Parameters.AddWithValue("@mail",b.email);
        cmd.Parameters.AddWithValue("@pass",b.pass);
        cmd.Parameters.AddWithValue("@cpass",b.conpass);
        cmd.Parameters.AddWithValue("@gen",b.gender);
        cmd.Parameters.AddWithValue("@dob", b.dob);
        cmd.Parameters.AddWithValue("@rdate",b.registerdate);
        cmd.Parameters.AddWithValue("@add",b.address);
        cmd.Parameters.AddWithValue("@addinfo", b.addinfo);
        cmd.Parameters.AddWithValue("@conno", b.conno);
        cmd.Parameters.AddWithValue("@zip",b.zip);
        cmd.Parameters.AddWithValue("@contry", b.fkcon_id);


        cmd.Parameters.AddWithValue("@state", b.fks_id);
        cmd.Parameters.AddWithValue("@city", b.fkc_id);
        
        cmd.Parameters.AddWithValue("@role",b.role);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public int login_user(bal b)
    {
        con.Open();
        cmd = new SqlCommand("select count(*) from register where email=@unm and pass=@pwd",con);
        cmd.Parameters.AddWithValue("@unm",b.email);
        cmd.Parameters.AddWithValue("@pwd",b.pass);
        int r = Convert.ToInt16(cmd.ExecuteScalar());
        con.Close();
        return r;
      
    }
    public DataTable select_register(bal b)
    {
        da = new SqlDataAdapter("select_register",con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@email",b.email);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable registerwhole()
    {
        da = new SqlDataAdapter("select_registerwhole", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
       
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
   
    public void update_register(bal b)
    {
        con.Open();
        cmd = new SqlCommand("update_register",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@u_id",b.user_id);
        cmd.Parameters.AddWithValue("@fname", b.fname); 
        cmd.Parameters.AddWithValue("@lname", b.lnm);
        cmd.Parameters.AddWithValue("@email", b.email);
        //cmd.Parameters.AddWithValue("@gender", b.gender);
        cmd.Parameters.AddWithValue("@dob", b.dob);
     
        cmd.Parameters.AddWithValue("@add", b.address);
        cmd.Parameters.AddWithValue("@c_id", b.fkc_id); 
        cmd.Parameters.AddWithValue("@conno", b.conno);
        cmd.Parameters.AddWithValue("@s_id", b.fks_id);
        cmd.Parameters.AddWithValue("@con_id", b.fkcon_id);
       
        cmd.Parameters.AddWithValue("@zip", b.zip);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void delete_register(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete_register",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@user_id",b.user_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable search_product(bal b)
    {
        con.Open();
        da = new SqlDataAdapter("select * from product where fkcat_id=@id",con);
        da.SelectCommand.Parameters.AddWithValue("@id",b.fkcat_id);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    
    public void insert_cart(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into tblcart values(@email,@fkproduct_id,@qty,@total,@date)",con);
        cmd.Parameters.AddWithValue("@email",b.email);
        cmd.Parameters.AddWithValue("@fkproduct_id", b.fkproduct_id);
       // cmd.Parameters.AddWithValue("@pro_name", b.proname);
       // cmd.Parameters.AddWithValue("@pro_image", b.proimg);
        //cmd.Parameters.AddWithValue("@cost", b.proprice);
        cmd.Parameters.AddWithValue("@qty",b.qty);
        cmd.Parameters.AddWithValue("@total", b.total);
        cmd.Parameters.AddWithValue("@date", b.date);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable select_cart(bal b)
    {
        da = new SqlDataAdapter("select p.product_id, p.pro_name,p.pro_image,p.pro_price,c.qty,c.total,c.date,c.cart_id from product p inner join tblcart c on p.product_id=c.fkproduct_id where c.email=@id", con);
        da.SelectCommand.Parameters.AddWithValue("@id",b.email);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable select_admincart()
    {
        da = new SqlDataAdapter("select s.fname,s.lname, p.pro_name,p.pro_image,p.pro_price,c.qty,c.total,c.date,c.cart_id from product p inner join tblcart c on p.product_id=c.fkproduct_id inner join register s on s.email=c.email", con);
       
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void cart_delete(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from tblcart where cart_id=@id",con);
        cmd.Parameters.AddWithValue("@id",b.cart_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void insert_payment(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into tblpayment values(@pdate,@fkpid,@fkuid)", con);
        cmd.Parameters.AddWithValue("@pdate",b.date);
     
        cmd.Parameters.AddWithValue("@fkpid",b.fkproduct_id);
      //  cmd.Parameters.AddWithValue("@fkoid",b.fkoid);
        cmd.Parameters.AddWithValue("@fkuid",b.email);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable user_purchase(bal b)
    {
        da = new SqlDataAdapter("select r.fname,r.lname,p.pro_name,p.pro_image,p.pro_price,pay.pay_date  from tblpayment pay inner join product p on p.product_id=pay.refproduct_id inner join register r on r.email=pay.refemail  where pay.refemail=@id ", con);
        da.SelectCommand.Parameters.AddWithValue("@id",b.email);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    
    }
    public void insert_review(bal b)
    {
        con.Open();
        cmd = new SqlCommand("insert into review values(@review,@rate,@date,@fkpid,@fkuid,@isachieve)",con);
        cmd.Parameters.AddWithValue("@review",b.review);
        cmd.Parameters.AddWithValue("@rate",b.rate);
        cmd.Parameters.AddWithValue("@date",b.date);
        cmd.Parameters.AddWithValue("@fkpid",b.fkproduct_id);
        cmd.Parameters.AddWithValue("@fkuid",b.email);
        cmd.Parameters.AddWithValue("@isachieve",b.achieve);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable select_review()
    {
        da = new SqlDataAdapter("select s.fname,s.lname,p.pro_name,p.pro_image,r.review,r.rate,r.date,r.f_id from review r inner join product p on p.product_id=r.refproduct_id inner join register s on s.email=r.refemail", con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable select_userreview()
    {
        da = new SqlDataAdapter("select s.fname,s.lname,p.pro_image,r.rate from review r inner join product p on p.product_id=r.refproduct_id inner join register s on s.email=r.refemail", con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void delete_review(bal b)
    {
        con.Open();
        cmd = new SqlCommand("delete from review where f_id=@id", con);
        cmd.Parameters.AddWithValue("@id", b.f_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
   
    public int getcount(bal b)
    {
        con.Open();
        cmd = new SqlCommand("select count(*) from tblcart where email=@id",con);
        cmd.Parameters.AddWithValue("@id",b.email);
      int r=Convert.ToInt16(  cmd.ExecuteScalar());
        con.Close();
        return r; 
    }
    public int getotp()
    {
        con.Open();
        cmd = new SqlCommand("select otp from tblotp",con);
        int r =Convert.ToInt32(  cmd.ExecuteScalar());
        con.Close();
        return r;
    }


    
  
   
}