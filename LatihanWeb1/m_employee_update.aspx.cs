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
    public partial class m_employee_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            String id = Request.QueryString["id"];

            SqlCommand cmd = new SqlCommand("SELECT [employee_id], [employee_name], [employee_address], [employee_email], [tb_jobtitle].[jobtitle_name], [employee_jobtitle_code] " +
                "FROM [tb_employee] left join [tb_jobtitle] on [tb_jobtitle].[jobtitle_code] = [tb_employee].[employee_jobtitle_code] " +
                "WHERE [employee_id] = @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                TextBoxEmpID.Text = Convert.ToString(dt.Rows[0]["employee_id"]);
                TextBoxEmpName.Text = Convert.ToString(dt.Rows[0]["employee_name"]);
                TextAreaEmpAddress.Value = Convert.ToString(dt.Rows[0]["employee_address"]);
                TextBoxEmpEmail.Text = Convert.ToString(dt.Rows[0]["employee_email"]);
                DropDownList1.SelectedValue = Convert.ToString(dt.Rows[0]["employee_jobtitle_code"]);
            }
        }

        protected void ButtonUpdateEmp_Click(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            String employeeId = TextBoxEmpID.Text;
            String name = Request.Form["TextBoxEmpName"];
            String email = Request.Form["TextBoxEmpEmail"];
            String address = Request.Form["TextAreaEmpAddress"];
            String jobCode = Request.Form["DropDownList1"];
            
            SqlCommand cmd = new SqlCommand("update tb_employee set employee_name=@name, employee_address=@address, employee_email=@email, employee_jobtitle_code=@jobcode where employee_id=@id", con);
            cmd.Parameters.AddWithValue("@id", employeeId);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@jobcode", jobCode);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_employee_view.aspx");
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("m_employee_view.aspx");
        }

        protected void ButtonDelete_click(object sender, EventArgs e)
        {

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            String connStr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            String employeeId = TextBoxEmpID.Text;
            SqlCommand cmd = new SqlCommand("delete from tb_employee where employee_id=@id", con);
            cmd.Parameters.AddWithValue("@id", employeeId);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("m_employee_view.aspx");
        }
    }
}