<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home"
    MasterPageFile="~/MasterPages/ParentMasterPage.master" %>

<%@ OutputCache Duration="10" VaryByParam="*" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" border="1">
        <tr>
            <td align="left" class="style2" valign="top">
                <asp:Panel ID="Panel1" runat="server" Font-Bold="true" ForeColor="#993333" Width="303px">
                    Welcome to MusicMania Store!
                    <br />
                    <br />
                    Music Mania Store is a unique platform for music lovers. It has a great variety
                    of collection of music including Jazz, Rock, Pop, Latin, and many more.<br />
                    <br />
                    <asp:HyperLink ID="hlKnowMore" runat="server" Font-Bold="false" ForeColor="Black"
                        NavigateUrl="~/AboutUs.aspx">Know More</asp:HyperLink>
                </asp:Panel>
            </td>
            <td align="center" valign="middle" class="style9">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Listen Music.JPG" />
                <br />
                <br />
                <table class="style1" border="1">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="lbNewUser" runat="server" Font-Bold="true" Font-Italic="true" Font-Names="Cambria"
                                ForeColor="#993333" Text="New User"></asp:Label>
                            <br />
                            <asp:HyperLink ID="hlSignUp" runat="server" ForeColor="Black" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                        </td>
                        <td>
                            <asp:Label ID="lbOldUser" runat="server" Font-Bold="true" Font-Italic="true" Font-Names="Cambria"
                                ForeColor="#993333" Text="Already A User"></asp:Label>
                            <br />
                            <asp:HyperLink ID="hlSignIn" runat="server" ForeColor="Black">Sign In</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left" valign="top" class="style8">
                <asp:Label ID="lbMusicClub" runat="server" Font-Bold="true" Font-Size="Large" Font-Underline="true"
                    ForeColor="#993333" Text="Join the Music Club"></asp:Label>
                <br />
                <asp:BulletedList ID="BulletedList1" runat="server" Style="margin-left: 17px" ForeColor="Maroon">
                    <asp:ListItem>Get membership of six months worth $50.</asp:ListItem>
                    <asp:ListItem>Get 10% discount.</asp:ListItem>
                    <asp:ListItem>Get music CDs free worth $15.</asp:ListItem>
                </asp:BulletedList>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lbMsg" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
