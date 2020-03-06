using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LatihanWeb1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            String username = TextBoxUsername.Text;
            String password = TextBoxPassword.Text;

            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from tb_user where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("m_employee_view.aspx");
            }
            else
            {
                Label1.Text = "Your username and word is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}