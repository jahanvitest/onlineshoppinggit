using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for bal
/// </summary>
public  class bal
{
	public bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   public int user_id { get; set; }
   public  int con_id { get; set; }
   public int fkcon_id { get; set; }
   public int sid { get; set; }
   public int fks_id { get; set; }
     public int c_id { get; set; }
     public int fkc_id { get; set; }
     public int cat_id { get; set; }
     public int scat_id { get; set; }
     public int fkcat_id { get; set; }
     public string conname { get; set; }
     public string categoryname { get; set; }
     public string subcategoryname { get; set; }
     public string cname { get; set; }

    // product table//
     public int product_id { get; set; }
     public string proname { get; set; }
     public string proimg { get; set; }
     public string prodetail { get; set; }
     public int procode{ get; set; }
     public int stock { get; set; }
     public string proprice { get; set; }
     public int fkscat_id { get; set; }

    // register table//
 
     public string fname { get; set; }
     public string lnm { get; set; }
     public string email { get; set; }
     public string pass { get; set; }
     public string conpass { get; set; }
     public string gender { get; set; }
     public DateTime  dob { get; set; }
     public DateTime  registerdate { get; set; }
     public string address { get; set; }
  
     public string sname { get; set; }
     public string addinfo { get; set; }
     public string conno { get; set; }
     public int zip { get; set; }
     public string role { get; set; }

    // login//

     public string unm { get; set; } 

    // cart//
     public int cart_id { get; set; }

     public int fkuser_id { get; set; }

     public int fkproduct_id { get; set; }

     public decimal cost { get; set; }

     public DateTime date { get; set; }

     public int qty { get; set; }

     public decimal total { get; set; }

     public int fkoid { get; set; }

    //review

     public string review {get; set; }
     public int f_id { get; set; }
     public int rate   {get; set; }
     public bool achieve { get; set; }

     //count

     public int otp { get; set; }
}