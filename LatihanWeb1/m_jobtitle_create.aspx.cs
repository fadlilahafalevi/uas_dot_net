using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LatihanWeb1
{
    public partial class m_jobtitle_create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_jobtitle_view.aspx");
        }

        protected void ButtonCreateJT_Click(object sender, EventArgs e)
        {
            String code = TextBoxJTCode.Text;
            String name = TextBoxJTName.Text;
            String desc = Request.Form["TextAreaJTDesc"];

            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=D:\UAS_41817110006_41817110009\LatihanWeb1\App_Data\db_employee.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_jobtitle(jobtitle_code, jobtitle_name, jobtitle_desc) values (@code, @name, @desc)", con);
            cmd.Parameters.AddWithValue("@code", code);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@desc", desc);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_jobtitle_view.aspx");
        }
    }
}