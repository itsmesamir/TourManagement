using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Configuration;

namespace Coursework_WebForm
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            OracleConnection connection = new OracleConnection(ConnectionString);
            connection.Open();
            //string query = " select employeeid, name, address, phone, staff.roleid, designation, salary from staff join designation on staff.roleid=designation.roleid where Designation ='" + DropDownList1.SelectedItem.Text + "'";
            string overallQuery = "select count(*) from package";
            OracleCommand command1 = new OracleCommand(overallQuery, connection);

            OracleDataReader reader = command1.ExecuteReader();
            reader.Read();
            Label1.Text = reader[0].ToString();
            string q2 = "select count(*) from staff";
            OracleCommand command2 = new OracleCommand(q2, connection);

            OracleDataReader reader2 = command2.ExecuteReader();
            reader2.Read();
            Label2.Text = reader2[0].ToString();

            string q3 = "select count(*) from customer";
            OracleCommand command3 = new OracleCommand(q3, connection);

            OracleDataReader reader3 = command3.ExecuteReader();
            reader3.Read();
            Label3.Text = reader3[0].ToString();
            string q4 = "select count(*) from activities";
            OracleCommand command4 = new OracleCommand(q4, connection);

            OracleDataReader reader4 = command4.ExecuteReader();
            reader4.Read();
            Label4.Text = reader4[0].ToString();

            string q5 = "select count(*) from staff where roleid='R2'";
            OracleCommand command5 = new OracleCommand(q5, connection);

            OracleDataReader reader5 = command5.ExecuteReader();
            reader5.Read();
            Label5.Text = reader5[0].ToString();

            connection.Close();
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}