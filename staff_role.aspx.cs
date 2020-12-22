using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Configuration;

namespace Coursework_WebForm
{
    public partial class staff_role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            OracleConnection connection = new OracleConnection(ConnectionString);
            connection.Open();
            string query = " select employeeid, name, address, phone, staff.roleid, designation, salary from staff join designation on staff.roleid=designation.roleid where Designation ='" + DropDownList1.SelectedItem.Text + "'";
            OracleCommand command1 = new OracleCommand(query, connection);

            GridViewrole.DataSource = command1.ExecuteReader();
            GridViewrole.DataBind();
            connection.Close();




        }
    }
}