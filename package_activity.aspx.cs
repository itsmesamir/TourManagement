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
    public partial class package_activity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Insert(0,"Select");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            OracleConnection connection = new OracleConnection(ConnectionString);
            connection.Open();
            //string query = " select employeeid, name, address, phone, staff.roleid, designation, salary from staff join designation on staff.roleid=designation.roleid where Designation ='" + DropDownList1.SelectedItem.Text + "'";
            string overallQuery = "SELECT PACKAGE.PACKAGEID, PACKAGE.PACKAGENAME, DAILY_DETAILS.TRAVELDETAILS, ACTIVITIES.ACTIVITYID, ACTIVITIES.ACTIVITYNAME, ACTIVITIES.TRAVELMODE FROM PACKAGE, PACKAGE_DAILY_ACTIVITIES, ACTIVITIES, DAILY_DETAILS WHERE PACKAGE.PACKAGEID = PACKAGE_DAILY_ACTIVITIES.PACKAGEID AND PACKAGE_DAILY_ACTIVITIES.ACTIVITYID = ACTIVITIES.ACTIVITYID AND PACKAGE_DAILY_ACTIVITIES.DAILYDETAILSID = DAILY_DETAILS.DAILYDETAILSID AND PACKAGENAME='"+ DropDownList1.SelectedItem.Text + "'";
            OracleCommand command1 = new OracleCommand(overallQuery, connection);

            GridView2.DataSource = command1.ExecuteReader();
            GridView2.DataBind();
            connection.Close();
        }
    }
}