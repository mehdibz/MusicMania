<%@ Page Language="C#" MasterPageFile="~/MasterPages/ParentMasterPage.master" AutoEventWireup="true"
    CodeFile="Welcome.aspx.cs" Inherits="Welcome" Title="Welcome" %>

<%@ PreviousPageType VirtualPath="~/SignUp.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label runat="server" ID="lblUserName" ForeColor="Maroon" Font-Bold="true" Font-Size="Medium"></asp:Label>
</asp:Content>
