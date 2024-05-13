using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataHelper
{
    public class DataAccess
    {
        static String myConStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Ellaine\Documents\Visual Studio 2013\WebSites\WebSite4\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection myConn = new SqlConnection(myConStr);

        String fname, lname, emailadd, address, birthday, password, date, prodname;

        decimal stcks, prc, qty, ttl, prodid, newstcks;

      


        #region DecimalVariables 
        public decimal Prodid
        {
            get { return prodid; }
            set { prodid = value; }
        }
        public decimal Ttl
        {
            get { return ttl; }
            set { ttl = value; }
        }
        public decimal Qty
        {
            get { return qty; }
            set { qty = value; }
        }
        public decimal Prc
        {
            get { return prc; }
            set { prc = value; }
        }
        public decimal Stcks
        {
            get { return stcks; }
            set { stcks = value; }
        }
        public decimal Newstcks
        {
            get { return newstcks; }
            set { newstcks = value; }
        }
        #endregion

        #region StringVariables
        public String Prodname
        {
            get { return prodname; }
            set { prodname = value; }
        }
        public String Password
        {
            get { return password; }
            set { password = value; }
        }
        public String Birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }
        public String Address
        {
            get { return address; }
            set { address = value; }
        }
        public String Emailadd
        {
            get { return emailadd; }
            set { emailadd = value; }
        }
        public String Lname
        {
            get { return lname; }
            set { lname = value; }
        }
        public String Fname
        {
            get { return fname; }
            set { fname = value; }
        }
        public String Date
        {
            get { return date; }
            set { date = value; }
        }
        #endregion

        public bool RegisterUser()
        {
            bool validData = true;
            myConn.Open();
            if (validData)
            {
                SqlCommand saveCmd = new SqlCommand("RegUser", myConn);
                saveCmd.CommandType = CommandType.StoredProcedure;

                saveCmd.Parameters.Add(@"FirstName", SqlDbType.NVarChar).Value = Fname;
                saveCmd.Parameters.Add(@"LastName", SqlDbType.NVarChar).Value = Lname;
                saveCmd.Parameters.Add(@"EmailAddress", SqlDbType.NVarChar).Value = Emailadd;
                saveCmd.Parameters.Add(@"Address", SqlDbType.NVarChar).Value = Address;
                saveCmd.Parameters.Add(@"Birthday", SqlDbType.NVarChar).Value = Birthday;
                saveCmd.Parameters.Add(@"Password", SqlDbType.NVarChar).Value = Password;
              
                saveCmd.ExecuteNonQuery();
                myConn.Close();
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool CheckUser()
        {
            bool validUser = false;

            myConn.Open();
            SqlCommand readcmd = new SqlCommand("CheckRegistered", myConn);
            readcmd.CommandType = CommandType.StoredProcedure;
            readcmd.Parameters.Add("@EmailAddress", SqlDbType.NVarChar).Value = Emailadd;
            readcmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password;
            SqlDataReader dr;
            dr = readcmd.ExecuteReader();

            while (dr.Read())
            {
                validUser = true;
                emailadd = dr.GetString(2);
                break;
            }
            return validUser;
        }

        public bool DisplayMembers()
        {
            bool validUser = false;
            myConn.Open();
            SqlCommand saveCmd = new SqlCommand("Displaymembers", myConn);
            saveCmd.CommandType = CommandType.StoredProcedure;
            saveCmd.Parameters.Add("@emailadd", SqlDbType.NVarChar).Value = emailadd;
            SqlDataReader reader = saveCmd.ExecuteReader();

            if (reader.Read())
            {
                fname = reader.GetString(0);
                lname = reader.GetString(1);
                emailadd = reader.GetString(2);
                
               // birthday = reader.GetDateTime(reader.GetOrdinal("Birthday")).ToString("d");
                address = reader.GetString(3);
                myConn.Close();
                return validUser = true;

            }
            else
            {
                myConn.Close();
                return validUser;

            }
        }

        public DataSet SelectProduct()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("Selectprod", myConn);
            DataSet ds = new DataSet();
            adpt.Fill(ds, "ProductInfo");
            return ds;
        }

        public decimal Total()
        {
            ttl = qty * prc;
            return ttl;
        }

        public decimal UpdateStocks()
        {
            Newstcks = Stcks - Qty;
            return Newstcks;

        }

        public bool PurchaseProd()
        {
            myConn.Open();
            SqlCommand readCmd = new SqlCommand("Purchaseprod", myConn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("ProductId", SqlDbType.NVarChar).Value = Prodid;
            readCmd.Parameters.Add("Qty", SqlDbType.NVarChar).Value = UpdateStocks();
            readCmd.ExecuteNonQuery();
            myConn.Close();
            return true;
        }

        public bool RecordTrans()
        {
            bool validData = true;
            myConn.Open();
            if (validData)
            {
                SqlCommand saveCmd = new SqlCommand("Rectrans", myConn);
                saveCmd.CommandType = CommandType.StoredProcedure;
                saveCmd.Parameters.Add("@DateTime", SqlDbType.NVarChar).Value = Date;
                saveCmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = Emailadd;
                saveCmd.Parameters.Add("@PurchasedProd", SqlDbType.NVarChar).Value = Prodname;
                saveCmd.Parameters.Add("@Quantity", SqlDbType.NVarChar).Value = Qty;
                saveCmd.Parameters.Add("@Amount", SqlDbType.NVarChar).Value = Ttl;
                saveCmd.ExecuteNonQuery();
                myConn.Close();
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataSet SelectTransaction()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("Selecttrans", myConn);
            DataSet ds = new DataSet();
            adpt.Fill(ds, "Transactions");
            return ds;
        }

        public bool AdminUpdate()
        {
            myConn.Open();
            SqlCommand readCmd = new SqlCommand("Adminupdate", myConn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@ProductId", SqlDbType.NVarChar).Value = Prodid;
            readCmd.Parameters.Add("@Quantity", SqlDbType.NVarChar).Value = Stcks;
            readCmd.ExecuteNonQuery();
            myConn.Close();
            return true;
        }
    }
}
