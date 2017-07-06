<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs"
    MasterPageFile="~/MasterPages/ChildMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Maroon" Text="Corporate: " Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                305 SW 8th Street<br />
                Bentonville, Arkansas 72716-8611<br />
                479-273-4000<br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbCustomerCare" Text="Customer Care:" Font-Size="Large"
                    ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbNumber" Text="1-800-952-6194"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
