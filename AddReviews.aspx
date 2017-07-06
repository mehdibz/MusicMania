<%@ Page Language="C#" MasterPageFile="~/MasterPages/ParentMasterPage.master" AutoEventWireup="true"
    CodeFile="AddReviews.aspx.cs" Inherits="AddReviews" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td align="center" valign="middle">
                <asp:Label runat="server" ID="lblHeading" Width="100%" ForeColor="Maroon" Font-Bold="true"
                    Font-Underline="true" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtAddReview" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="btnSubmitReview" Text="Submit" OnClick="btnSubmitReview_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle" style="height: 38px">
                <asp:Label runat="server" ID="lblMessage" ForeColor="Maroon" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" valign="middle">
                <asp:GridView runat="server" ID="gvReviews">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
