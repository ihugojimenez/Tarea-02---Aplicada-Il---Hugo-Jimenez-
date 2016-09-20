using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoockiesWebApplication
{
    public partial class ToWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           HttpCookie cookie = Request.Cookies["InfUser"];
            if(cookie != null){
                NameLabel.Text = cookie["Nombre"];
                EmailLabel.Text = cookie["Email"];
            }
            
        }
    }
}