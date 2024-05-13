using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

public partial class Registration : System.Web.UI.Page
{
    DataAccess myData = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {


        myData.Fname = txtFname.Text;
        myData.Lname = txtLname.Text;
        myData.Emailadd = txtEmailAdd.Text;
        myData.Address = txtAddress.Text;
        myData.Birthday = txtBirthday.Text;
        myData.Password = txtPassword.Text;


        DateTime limit = DateTime.Today.AddYears(-18);
       
            DateTime now = Convert.ToDateTime(txtBirthday.Text);
            int age = DateTime.Compare(now, limit);

            if (age <= 0)
            {
                lblAgeValidator.Text = "Age is valid";

                if (myData.RegisterUser())
                {
                    Response.Write("REGISTRATION SUCCESS!");
                }
                else
                {
                    Response.Write("REGISTRATION FAILED. Please try again!");
                }

            }
            else
            {
                lblAgeValidator.Text = "Age is invalid";
            }
        
    }
      
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}