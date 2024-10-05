using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SearchEmployee : System.Web.UI.Page
{
    string connectionString = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=emplyoee-management;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT * FROM emp WHERE salary > @salary OR designation = @designation", conn);
        cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
        cmd.Parameters.AddWithValue("@designation", txtDesignation.Text);

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        gvEmployees.DataSource = reader;
        gvEmployees.DataBind();
        conn.Close();
    }


}