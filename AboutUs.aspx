<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs"
    MasterPageFile="~/MasterPages/ChildMasterPage.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1" border="1">
        <tr>
            <td align="left" class="style2" valign="top" rowspan="2">
                <asp:Panel ID="Panel1" runat="server" Font-Bold="true" ForeColor="Maroon" Height="90%"
                    Width="90%" Style="margin-top: 0px">
                    Welcome to MusicMania Store!<br />
                    <br />
                    <span>MusicMania, established in 1989, has 40 stores all over United States. It is a
                        unique platform of music that caters to the tastes of all kind of music lovers.
                        MusicMania is famous for its huge collection of music and excellent customer service.</span>
                    <br />
                    <br />
                    Vision:<br />
                    <span>
                        <br />
                        To be the country's most preferred retailer for music. To be present at the consumer's
                        choice of access and format to deliver the same<br />
                        <br />
                    </span><span>Mission:</span>
                    <asp:BulletedList ID="blMission" runat="server" Font-Bold="false" Style="margin-left: 17px">
                        <asp:ListItem>Provide best customer service to ensure complete customer satisfaction.</asp:ListItem>
                        <asp:ListItem>To become largest provider of music in US.</asp:ListItem>
                    </asp:BulletedList>
                    <span>Awards:</span><br />
                    <asp:BulletedList ID="blAward" runat="server" Style="margin-left: 17px" Font-Bold="false">
                        <asp:ListItem>Got an award for &quote;Best Music Store&quote; in 1995.</asp:ListItem>
                        <asp:ListItem>Got an award for &quote;Best Customer Service&quote; and &quote;Best Vendor-Customer Relationship&quote; in 1998.</asp:ListItem>
                    </asp:BulletedList>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
