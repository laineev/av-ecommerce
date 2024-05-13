using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

public partial class Login : System.Web.UI.Page
{
    DataAccess myData = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        myData.Emailadd = txtUsername.Text;
        myData.Password = txtPassword.Text;

        if (myData.CheckUser())
        {
            Session["email"] = myData.Emailadd;
           

            Response.Redirect("Members.aspx");
        } else if (txtUsername.Text=="admin" && txtPassword.Text=="admin" ) {
            Response.Redirect("Admin.aspx");
        }
        else
        {
            Response.Write("Invalid credentials.");
        }
    }
}