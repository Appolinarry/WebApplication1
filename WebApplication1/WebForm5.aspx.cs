using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            DbParameter returnValue = e.Command.Parameters["@RETURN_VALUE"];
            int returnInt = Int32.Parse(returnValue.Value.ToString());
            Label1.Text = returnInt.ToString();
        }
    }
}