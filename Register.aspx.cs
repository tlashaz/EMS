using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register_Click(object sender, EventArgs ee)
    {
        SqlConnection conn = new SqlConnection("data source = TLASHAZ\\SQLEXPRESS; database = EMS; integrated security=SSPI");
        conn.Open();
        //int kk = 0;
        //String s = ConfigurationManager.ConnectionStrings["EMS"].ConnectionString;
        //SqlConnection conn = new SqlConnection(s);
        SqlCommand comm = new SqlCommand("SELECT * from dbo.Employees where Username = @user",conn);
        comm.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = uname.Text;

        SqlDataReader reader = comm.ExecuteReader();
        if (reader.HasRows)
        {
            valid.Text = "This Username is already alloted to another Employee. Enter a different Username !";
            reader.Close();
        }
        else
        {
            reader.Close();

            //    SqlCommand comm1 = new SqlCommand("INSERT INTO dbo.Employees(Full Name, Email, Username, Password, Confirm Password, Employee Type, Age) VALUES (@name, @email, @user, @pass, @cpass, @type, @age)", conn);

            //    comm1.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = name.Text;
            //    comm1.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email.Text;
            //    comm1.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = uname.Text;
            //    comm1.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = pass.Text;
            //    comm1.Parameters.Add("@cpass", SqlDbType.VarChar, 50).Value = cpass.Text;
            //    comm1.Parameters.Add("@type", SqlDbType.VarChar, 50).Value = type.Text;
            //  comm1.Parameters.Add("@age", SqlDbType.VarChar, 50).Value = age.Text;

            //    try
            //    {
            //        kk = comm1.ExecuteNonQuery();
            //        valid.Text = "Successfully Registered !";
            //        Response.Redirect("Dashboard.aspx");
            //    }
            //    catch (SqlException k)
            //    {
            //        if (kk != 1)
            //        {
            //            valid.Text = k.ToString();
            //        }
            //    }
            //    conn.Close();
            //}


            int aa = 0;

            try
            {


                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into dbo.Employees (FullName, Email, Username, Password, ConfirmPassword, EmployeeType, Age) values ('" + name.Text + "','" + email.Text + "','" + uname.Text + "','" + pass.Text + "','" + cpass.Text + "','" + type.Text + "','" + age.Text + "')";
                aa = cmd.ExecuteNonQuery();
                if (aa == 0)
                    valid.Text = "Unsuccessful Registration !";
                else
                    valid.Text = "Successful Registration !";

                conn.Close();

            }
            catch (Exception err)
            {

                valid.Text += err.Message;


            }
        }
    }
}