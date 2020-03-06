using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LatihanWeb1
{
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_employee_view.aspx");
        }

        protected void ButtonJobTitle_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_jobtitle_view.aspx");
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}