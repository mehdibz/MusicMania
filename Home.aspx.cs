using System;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbMsg.Text = "This website has been visited " + (Application["PageRequestCount"]) + " times.";
    }
}
