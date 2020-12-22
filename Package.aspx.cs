using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework_WebForm
{
    public partial class Package : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            // (e.Exception != null)
              //  e.ExceptionHandled = true;
            //Response.Write("<Script> alert('Please add unique primary key');</script>");

        }
    }
}