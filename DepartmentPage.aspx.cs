using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DepartmentPage : System.Web.UI.Page
{
    string connectionString = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=emplyoee-management;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addDept_Click(object sender, EventArgs e)
    {
        string txtDeptName = deptName.Text;
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "insert into department(dept_name) values('" + txtDeptName + "')";

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        cmd.Dispose();
        conn.Dispose();
    }
}