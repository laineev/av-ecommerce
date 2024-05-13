using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

public partial class MPlogin : System.Web.UI.Page
{
    DataAccess myData = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblEmail.Text = Session["email"].ToString();
        lblProduct.Text = Session["prodname"].ToString();
        lblQuantity.Text = Session["quantity"].ToString();
        lblTotal.Text = Session["total"].ToString();
        lblDate.Text = DateTime.Now.ToString();
    }

   
  
  
    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        /*pasok data from textboxes to database!*/

        myData.Date = Convert.ToString(lblDate.Text); //from TransPage
        myData.Emailadd = Session["email"].ToString(); //cust deets

        myData.Prodname = Session["prodname"].ToString();
        myData.Ttl = Convert.ToDecimal(Session["total"].ToString());


        myData.Prodid = Convert.ToDecimal(Session["prodid"].ToString());//purchase deets

        myData.Qty = Convert.ToDecimal(Session["quantity"].ToString());
        myData.Stcks = Convert.ToDecimal(Session["stocks"].ToString());
        myData.Prc = Convert.ToDecimal(Session["price"].ToString());

        if (myData.PurchaseProd() && myData.RecordTrans())
        {
            lblResponse.Text = "Transaction success!";
            //Response.Write("Transaction success");
        }
        else
        {
            lblResponse.Text = "Transaction failed.";
            // Response.Write("trans failed");
        }
    }
}