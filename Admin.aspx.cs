using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

public partial class Admin : System.Web.UI.Page
{
    DataAccess myData = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GridView1.DataSource = myData.SelectProduct();
            GridView1.DataBind();

            GridView2.DataSource = myData.SelectTransaction();
            GridView2.DataBind();
        }
        
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        myData.Prodid = Convert.ToDecimal(txtProdId.Text);
        myData.Stcks = Convert.ToDecimal(txtQuantity.Text);

        if (myData.AdminUpdate())
        {
            Response.Write("Update success!");
        }
        else
        {
            Response.Write("Update failed");
        }

        GridView1.DataSource = myData.SelectProduct();
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtProdId.Text = GridView1.SelectedRow.Cells[1].Text;
        txtProdName.Text = GridView1.SelectedRow.Cells[2].Text;
       // txtPrice.Text = GridView1.SelectedRow.Cells[3].Text;
        txtQuantity.Text = GridView1.SelectedRow.Cells[4].Text;
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDate.Text = GridView2.SelectedRow.Cells[1].Text;
        lblEmail.Text = GridView2.SelectedRow.Cells[2].Text;
        lblProduct.Text = GridView2.SelectedRow.Cells[3].Text;
        lblQuantity.Text = GridView2.SelectedRow.Cells[4].Text;
        lblAmount.Text = GridView2.SelectedRow.Cells[5].Text;
    }
   
   
}