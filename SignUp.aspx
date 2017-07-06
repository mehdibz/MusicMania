<%@ Page Language="C#" MasterPageFile="~/MasterPages/ParentMasterPage.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="SignUp" Title="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td align="center" valign="middle">
                <asp:Label runat="server" ID="lbRegister" Text="Register Yourself" Font-Bold="true"
                    Font-Underline="true" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbInstruction" ForeColor="Maroon" Text="Please fill this form to become a member of MusicMania.com. The information given will be used by MusicMania.com only and will not be revealed under any circumstances."></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table align="center">
        <tr>
            <td align="left" valign="top">
                <asp:Label runat="server" ID="lbUserID" Text="Username:" ForeColor="Maroon"></asp:Label>
            </td>
            <td align="left" valign="top">
                <asp:TextBox runat="server" ID="txtUserID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <asp:Label runat="server" ID="lbPassword" ForeColor="Maroon" Text="Password:"></asp:Label>
            </td>
            <td align="left" valign="top">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <asp:Label runat="server" ID="lblRetypePassword" ForeColor="Maroon" Text="Retype Password:"></asp:Label>
            </td>
            <td align="left" valign="top">
                <asp:TextBox runat="server" ID="txtRetypePassword" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <asp:Label runat="server" ID="lblAddress" ForeColor="Maroon" Text="Address:"></asp:Label>
            </td>
            <td align="left" valign="middle">
                <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <asp:Label runat="server" ID="lblCountry" ForeColor="Maroon" Text="Country:"></asp:Label>
            </td>
            <td align="left" valign="top">
                <asp:ListBox ID="lbCountry" runat="server">
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Austria</asp:ListItem>
                    <asp:ListItem>Belgium</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Colombia</asp:ListItem>
                    <asp:ListItem>Denmark</asp:ListItem>
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>Finland</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Greece</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                    <asp:ListItem>Ireland</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Kenya</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Maritius</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>New Zealand</asp:ListItem>
                    <asp:ListItem>Nigeria</asp:ListItem>
                    <asp:ListItem>Philippinse</asp:ListItem>
                    <asp:ListItem Value="Portugal"></asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Sweden</asp:ListItem>
                    <asp:ListItem>Switzerland</asp:ListItem>
                    <asp:ListItem>Taiwan</asp:ListItem>
                    <asp:ListItem>Thailand</asp:ListItem>
                    <asp:ListItem>United Kingdom</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>Vietnam</asp:ListItem>
                    <asp:ListItem>Zimbabwe</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhone" runat="server" Text="Contact No:" ForeColor="Maroon"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" PostBackUrl="~/Welcome.aspx"
                    ForeColor="Maroon" />
            </td>
            <td>
                <asp:Button runat="server" ID="btnReset" Text="Reset" ForeColor="Maroon" OnClick="btnReset_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
