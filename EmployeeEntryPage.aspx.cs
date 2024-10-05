using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EmployeeEntryPage : System.Web.UI.Page
{
    string connectionString = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=emplyoee-management;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (fileUploadCV.HasFile)
        {
            string fileExtension = System.IO.Path.GetExtension(fileUploadCV.FileName).ToLower();
            if (fileExtension == ".pdf")
            {
                string filePath = "~/CVs/" + System.IO.Path.GetFileName(fileUploadCV.FileName);
                fileUploadCV.SaveAs(Server.MapPath(filePath));

                // Insert new employee data into database
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO emp (name, dept, designation, salary, cv) VALUES (@name, @dept, @designation, @salary, @cv)", conn);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@dept", ddlDepartment.SelectedValue);
                cmd.Parameters.AddWithValue("@designation", ddlDesignation.SelectedValue);
                cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
                cmd.Parameters.AddWithValue("@cv", filePath);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Write("<script>alert('Employee added successfully!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Please upload a PDF file.');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please select a file.');</script>");
        }
    }


    protected void addDepartment_Click(object sender, EventArgs e)
    {
        Response.Redirect("DepartmentPage.aspx");
    }
}