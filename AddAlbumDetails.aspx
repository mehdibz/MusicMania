<%@ Page Language="C#" MasterPageFile="~/MasterPages/ParentMasterPage.master" AutoEventWireup="true" CodeFile="AddAlbumDetails.aspx.cs" Inherits="AddAlbumDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" valign="middle" align="center">
                <asp:Button ID="btnAlbum" runat="server" Text="Add New Album Details" 
                    onclick="btnAlbum_Click" />
            </td>
        </tr>
        <tr>
            <td valign="middle" align="left">
                <asp:Label runat="server" ID="lblAlbumID" Text="Album ID:"></asp:Label>
            </td>
            <td valign="middle" align="left">
                <asp:TextBox runat="server" ID="txtAlbumID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="middle" align="left">
                <asp:Label ID="lblAlbumName" runat="server" Text="Album Name:"></asp:Label>
            </td>
            <td valign="middle" align="left">
                <asp:TextBox ID="txtAlbumName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="middle" align="left">
                <asp:Label ID="lblAlbumArtist" runat="server" Text="Album Artist"></asp:Label>
            </td>
            <td valign="middle" align="left">
                <asp:TextBox ID="txtAlbumArtist" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" valign="middle">
                <asp:Label runat="server" ID="lblAlbumPrice" Text="Album Price:"></asp:Label>
            </td>
            <td align="left" valign="middle">
                <asp:TextBox ID="txtAlbumPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="middle" align="center">
                <asp:Button ID="btnAdd" runat="server" Text="Submit" onclick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="middle" align="center">
                <asp:Label ID="lblAlbumMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

