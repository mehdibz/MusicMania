using System;

public partial class SignUp : System.Web.UI.Page
{
    public string UserName
    {
        get { return txtUserID.Text; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtAddress.Text = "";
        txtPassword.Text = "";
        txtPhone.Text = "";
        txtRetypePassword.Text = "";
        txtUserID.Text = "";
        lbCountry.SelectedIndex = -1;
        txtUserID.Focus();
    }
}
