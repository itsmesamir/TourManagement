using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Configuration;

namespace Coursework_WebForm
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView123.DataSource = SqlDataSource1;
            //GridView123.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string configuration = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Samir\Documents\College.mdf;Integrated Security=True;Connect Timeout=30");

            ////string dropdownvalue = DropDownList1.SelectedItem.Value.ToString();
            ////string query = "SELECT STAFF.EMPLOYEEID, STAFF.NAME, STAFF.ADDRESS, STAFF.PHONE, STAFF.ROLEID, DESIGNATION.DESIGNATION FROM STAFF, DESIGNATION WHERE STAFF.ROLEID = DESIGNATION.ROLEID";
            //string queryy = "Select * from [dbo].[Login] where UserName ='" +DropDownList1.SelectedItem.Text+ "'";
            //conn.Open();
            //SqlCommand command = new SqlCommand(queryy, conn);
            //SqlDataAdapter adapter = new SqlDataAdapter(command);
            //DataTable dataTable = new DataTable();
            //adapter.Fill(dataTable);
            //GridView123.DataSource = dataTable;
            //GridView123.DataBind();

            //conn.Close();

            //string configuration = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(@"Data Source=localhost;User ID=samir;Password=***********;Unicode=True");
            //string dropdownvalue = DropDownList1.SelectedItem.Value.ToString();
            //string query = "SELECT STAFF.EMPLOYEEID, STAFF.NAME, STAFF.ADDRESS, STAFF.PHONE, STAFF.ROLEID, DESIGNATION.DESIGNATION FROM STAFF, DESIGNATION WHERE STAFF.ROLEID = DESIGNATION.ROLEID";
            //string queryy="Select * from [dbo].[Designation] where Designation ='"+DropDownList1.SelectedItem.Text+"'";
            //conn.Open();
            //SqlCommand command = new SqlCommand(queryy, conn);
            //SqlDataAdapter adapter = new SqlDataAdapter(command);
            //DataTable dataTable = new DataTable();
            //adapter.Fill(dataTable);
            //GridView123.DataSource = dataTable;
            //GridView123.DataBind();

            //conn.Close();


            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            OracleConnection connection = new OracleConnection(ConnectionString);
            connection.Open();
            string quey = "Select * from DESIGNATION where Designation ='" + DropDownList1.SelectedItem.Text + "'";
            OracleCommand command1 = new OracleCommand(quey, connection);

            GridView123.DataSource = command1.ExecuteReader();
            GridView123.DataBind();
            connection.Close();

        }
    }
}