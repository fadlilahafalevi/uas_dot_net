using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LatihanWeb1
{
    public partial class m_employee_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;

            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            String employeeId = GridView1.DataKeys[row.RowIndex].Value.ToString();
            SqlCommand cmd = new SqlCommand("delete from tb_employee where employee_id=@id", con);
            cmd.Parameters.AddWithValue("@id", employeeId);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_employee_view.aspx");
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_employee_create.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}