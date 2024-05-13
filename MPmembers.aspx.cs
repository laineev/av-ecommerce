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

      
        myData.Emailadd = Session["email"].ToString();

        #region 11amJanuary1

        if (myData.DisplayMembers())
        {
            lblName.Text = myData.Fname + " " + myData.Lname;
            lblUsername.Text = myData.Emailadd;

            lblAddress.Text = myData.Address;
            //   lblBirthday.Text = myData.Birthday;
        }
        else Response.Write("error");

        #endregion

        if (!IsPostBack)
        {
            GridView1.DataSource = myData.SelectProduct();
            GridView1.DataBind();
        }
    }

   
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtProdId.Text = GridView1.SelectedRow.Cells[1].Text;
        txtProdName.Text = GridView1.SelectedRow.Cells[2].Text;
        txtPrice.Text = GridView1.SelectedRow.Cells[3].Text;
        txtStocks.Text = GridView1.SelectedRow.Cells[4].Text;
    }
    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        Session["prodid"] = txtProdId.Text;
        Session["prodname"] = txtProdName.Text;
        Session["price"] = txtPrice.Text;
        Session["stocks"] = txtStocks.Text;
        Session["quantity"] = txtQuantity.Text;

        myData.Stcks = Convert.ToDecimal(txtStocks.Text);
        myData.Prc = Convert.ToDecimal(txtPrice.Text);
        myData.Qty = Convert.ToDecimal(txtQuantity.Text);

        Session["total"] = myData.Total().ToString();

        if (myData.Stcks >= myData.Qty)
        {
          Response.Redirect("MPtrans.aspx");
        }
        else
        {
            lblResponse.Text = "Low on stocks!";
            // Response.Write("Low on stocks!");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("MPlogin.aspx");

    }
}