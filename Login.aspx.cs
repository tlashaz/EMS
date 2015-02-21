using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs ee)
    {
        String s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;
        SqlConnection conn = new SqlConnection(s);
        SqlCommand comm = new SqlCommand("SELECT * from dbo.Employees where Username = @user and Password = @pass",conn);
        comm.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = uname.Text;
        comm.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = pass.Text;
        conn.Open();

        SqlDataReader reader = comm.ExecuteReader();
        if (reader.HasRows)
        {
            Session["user"] = uname.Text;
            valid.Text = "Successful Login !";
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            valid.Text = "Invalid Username or Password !";
        }

        conn.Close();
     }
}