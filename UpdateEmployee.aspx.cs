using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    string connectionString = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=emplyoee-management;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("UPDATE Emp SET dept=@dept, designation=@designation, salary=@salary WHERE eno=@eno", conn);
        cmd.Parameters.AddWithValue("@eno", txtEmpID.Text);
        cmd.Parameters.AddWithValue("@dept", ddlDepartment.SelectedValue);
        cmd.Parameters.AddWithValue("@designation", ddlDesignation.SelectedValue);
        cmd.Parameters.AddWithValue("@salary", txtSalary.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('Employee updated successfully!');</script>");
    }


}