using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LatihanWeb1
{
    public partial class m_employee_create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreateJT_Click(object sender, EventArgs e)
        {
            
        }

        protected void ButtonCreateJT_Click1(object sender, EventArgs e)
        {
            String employeeId = TextBoxEmpID.Text;
            String name = TextBoxEmpName.Text;
            String email = TextBoxEmpEmail.Text;
            String address = Request.Form["TextAreaEmpAddress"];
            String jobCode = DropDownList1.SelectedValue;

            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=D:\UAS_41817110006_41817110009\LatihanWeb1\App_Data\db_employee.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_employee(employee_id, employee_name, employee_address, employee_email, employee_jobtitle_code) values (@id, @name, @address, @email, @jobcode)", con);
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
            Response.Redirect("m_jobtitle_view.aspx");
        }
    }
}