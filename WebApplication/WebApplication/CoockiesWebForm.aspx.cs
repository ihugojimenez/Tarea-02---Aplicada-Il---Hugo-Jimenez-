using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class CoockiesWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            HttpCookie co = new HttpCookie("InfUser");
            co["Nombre"] = NameTextBox.Text;
            co["Email"] = EmailTextBox.Text;
           // co.Expires = DateTime.Now.AddDays(2);
            Response.Cookies.Add(co);

            Response.Redirect("ToWebForm.aspx");
        }
    }
}