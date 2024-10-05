using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EmployeeList : System.Web.UI.Page
{
    string connectionString = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=emplyoee-management;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM emp ORDER BY designation", conn);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            gvEmployees.DataSource = reader;
            gvEmployees.DataBind();
            conn.Close();
        }
    }


    protected void gvEmployees_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}