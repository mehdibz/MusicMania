using System;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage != null)
            lblUserName.Text = "Welcome " + PreviousPage.UserName + ", you have successfully registered.";
        else
            Response.Redirect("Home.aspx");
    }
}
