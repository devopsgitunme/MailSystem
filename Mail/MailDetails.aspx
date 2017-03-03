<%@ Page Title="" Language="C#" MasterPageFile="~/Mail/MailMaster.master" AutoEventWireup="true" CodeFile="MailDetails.aspx.cs" Inherits="Mail_DetailsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .imgDelete
        {
            border-radius:15px 15px 15px 15px;
            margin-left:40px;
            cursor:default;
        }
        .imgBack
        {
            cursor:default;
        }
    </style>
    <link href="~/CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate--%>&nbsp;<div>
        <table><tr><td><div class="divHeaderContent">
            <asp:ImageButton CssClass="imgBack" ID="imgBack" runat="server" Height="30px" 
                ImageUrl="~/Images/grid-backbutton.png" Width="100px" ToolTip="Back" /></div></td>
            <td><div class="divHeaderContent">
                <asp:ImageButton CssClass="imgDelete" ID="imgDelete" runat="server" 
                    Height="30px" ImageUrl="~/Images/can-stock-photo_csp6514585.png" 
                    Width="100px" ToolTip="Delete" OnClick="imgDelete_Click" /></div></td>
            </tr></table>
        <hr />
    </div>
    <div class="divContentDetails">  
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td><asp:Label CssClass="lblSubject" ID="lblSubject" runat="server" Width="100%" ></asp:Label>
                    <br />
                    <hr />
                </td>
            </tr>
            
            <tr>
                <td>
                    
                    <table border="0" cellpadding="0" cellspacing="0" class="lblMID">
                        <tr class="lblMID">
                            <td> From</td><td>&nbsp;:&nbsp;</td>
                            <td class="lbl"><asp:Label ID="lblFromID" runat="server" ></asp:Label>
                            </td>
                        </tr>
                        <tr class="lblMID"><td style="padding-right:25px">To</td><td>&nbsp;:&nbsp;</td><td class="lbl"><asp:Label ID="lblToId" runat="server" ></asp:Label></td></tr>
                        <tr class="lblMID"><td style="padding-right:25px">Date</td><td>&nbsp;:&nbsp;</td><td class="lbl"><asp:Label ID="lblDate" runat="server" ></asp:Label></td></tr>
                        <tr class="lblMID"><td style="padding-right:25px">Subject</td><td>&nbsp;:&nbsp;</td><td class="lbl"><asp:Label ID="lblSub" runat="server" ></asp:Label></td></tr>
                        <tr class="lblMID"><td style="padding-right:25px">Mailed-By</td><td>&nbsp;:&nbsp;</td><td class="lbl"><asp:Label ID="lblMailBy" runat="server" Text="Canoysoft" ></asp:Label></td></tr>
                    </table>
               
                </td>
            </tr>
            <tr>
                <td><table border="0" cellpadding="0" cellspacing="0" class="lblMID">
                        <tr class="lblMID">
                            <td class="lbl"><asp:Label ID="lblBody" runat="server" ></asp:Label>
                            </td>
                        </tr>
                        </table>
                    
                </td>
            </tr>
            <tr>
                <td><hr />
                    <table border="0" cellpadding="0" cellspacing="0" class="lblMID">
                        <tr class="lblMID">
                            <td><asp:Image ID="imgAttach" runat="server" Height="45px" Width="45px" 
                                    Visible="False" /></td>
                            <td class="lbl"><asp:Label ID="lblFilename" runat="server" Visible="False" ></asp:Label>
                            <br />
                            <asp:LinkButton CssClass="LinkButton" ID="LinkView" runat="server" Visible="False">View</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                                    CssClass="LinkButton" ID="LinkDownload" runat="server" Visible="False" 
                                    onclick="LinkDownload_Click">Download</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <table border="0" cellpadding="0" cellspacing="0">
                            <tr><td>
                            </td></tr>
                            </table></td>
                        </tr>
                     </table>
                </td>
            </tr>
        </table>
    </div>
<%--    </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>

