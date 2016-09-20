using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class QueryStringWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1
            // Get collection
            NameValueCollection n = Request.QueryString;
            // 2
            // See if any query string exists
            if (n.HasKeys())
            {
                // 3
                // Get first key and value
                string k = n.GetKey(0);
                string v = n.Get(0);
                // 4
                // Test different keys
                if (k == "param")
                {
                    Response.Write("param is " + v);
                }
                if (k == "id")
                {
                    Response.Write("id is " + v);
                }
            }
        }
    }
}