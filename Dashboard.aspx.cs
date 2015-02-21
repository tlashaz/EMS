using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            String name = (String)Session["user"];
            welcome.Text = "Welcome '" + name + "' to your Dashboard! This is Under-Construction right now ";
        }
    }

    protected void signout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}