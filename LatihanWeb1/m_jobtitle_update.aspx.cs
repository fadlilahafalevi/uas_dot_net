using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LatihanWeb1
{
    public partial class m_jobtitle_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            String id = Request.QueryString["code"];

            SqlCommand cmd = new SqlCommand("SELECT * FROM [tb_jobtitle]", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                TextBoxJTCode.Text = Convert.ToString(dt.Rows[0]["jobtitle_code"]);
                TextBoxJTName.Text = Convert.ToString(dt.Rows[0]["jobtitle_name"]);
                TextAreaJTDesc.Value = Convert.ToString(dt.Rows[0]["jobtitle_desc"]);
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_jobtitle_view.aspx");
        }

        protected void ButtonUpdateJT_Click(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            String jobtitleCode = TextBoxJTCode.Text;
            String jobtitleName = Request.Form["TextBoxJTName"];
            String jobtitleDesc = Request.Form["TextAreaJTDesc"];

            SqlCommand cmd = new SqlCommand("update tb_jobtitle set jobtitle_name = @name, jobtitle_desc = @desc where jobtitle_code = @id", con);
            cmd.Parameters.AddWithValue("@id", jobtitleCode);
            cmd.Parameters.AddWithValue("@name", jobtitleName);
            cmd.Parameters.AddWithValue("@desc", jobtitleDesc);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_jobtitle_view.aspx");
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            String jobtitleCode = TextBoxJTCode.Text;
            SqlCommand cmd = new SqlCommand("delete from tb_jobtitle where jobtitle_code=@id", con);
            cmd.Parameters.AddWithValue("@id", jobtitleCode);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_jobtitle_view.aspx");
        }
    }
}