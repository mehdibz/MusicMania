<%@ Page Language="C#" MasterPageFile="~/MasterPages/ParentMasterPage.master" AutoEventWireup="true"
    CodeFile="Albums.aspx.cs" Inherits="Albums" Title="Albums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;&nbsp;
    <table width="100%">
        <tr>
            <td align="left" valign="middle" colspan="2">
                <asp:WebPartManager ID="wpm" runat="server">
                </asp:WebPartManager>
                <asp:ScriptManager ID="sm" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="upPanel" runat="server">
                    <ContentTemplate>
                        <asp:WebPartZone ID="WebPartZone1" runat="server" title="Albums">
                            <ZoneTemplate>
                                <asp:DropDownList ID="ddAlbum" runat="server" AutoPostBack="true" Width="243px" ForeColor="Maroon"
                                    OnSelectedIndexChanged="ddAlbum_SelectedIndexChanged">
                                </asp:DropDownList>
                            </ZoneTemplate>
                        </asp:WebPartZone>
                    </ContentTemplate>
                </asp:UpdatePanel>
                &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" Height="26px" OnClick="btnSave_Click" />
                <br />
                <br />
                <asp:Button ID="btnAddReview" runat="server" Text="Add Review" OnClick="btnAddReview_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left" valign="middle" style="height: 74px">
                <asp:Label ID="lbAlreadySelected" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" valign="middle" colspan="2">
                <asp:Label ID="lbSelectedAlbum" runat="server" Text="Selected Albums"></asp:Label><br />
                <asp:ListBox runat="server" ID="lbSelectedAlbums" Height="85px" Width="140px"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left" valign="middle" style="width: 493px">
                <asp:Label runat="server" ID="lblAlbumDetails" Text="Album Details"></asp:Label>
                <asp:UpdateProgress ID="up" runat="server" AssociatedUpdatePanelID="upPanel">
                    <ProgressTemplate>
                        Getting Album Details...
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </td>
        </tr>
        <tr>
            <td align="left" valign="middle">
                <asp:UpdatePanel ID="upPanel2" runat="server">
                    <ContentTemplate>
                        <asp:WebPartZone ID="WebPartZone2" runat="server" title="Album Details">
                            <ZoneTemplate>
                                <asp:GridView ID="gvAlbumDetails" runat="server" Width="100%">
                                </asp:GridView>
                                </td>
                                <td align="left" valign="middle">
                                    <asp:GridView ID="gvViewDetails" runat="server" Width="100%">
                                    </asp:GridView>
                            </ZoneTemplate>
                        </asp:WebPartZone>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>
