<%@ Page Title="" Language="C#" MasterPageFile="~/Mail/MailMaster.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Mail_Compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="compHead1">
        <table>
            <tr>
                <td>
                <asp:Button CssClass="Button" ID="btnSend" runat="server" Text="Send" Width="75px" 
                        Height="25" onclick="btnSend_Click" ToolTip="Send" />
                </td>
                <td>
                <asp:Button CssClass="Button" ID="btnDiscard" runat="server" Text="Discard" 
                        Width="100px" Height="25" onclick="btnDiscard_Click" ToolTip="Discard"/>
                </td>
                <td>
                <asp:Button CssClass="Button" ID="btnDrafts" runat="server" Text="Save to Drafts" 
                        Width="125px" Height="25" onclick="btnDrafts_Click" ToolTip="Save to Drafts" />
                </td>
            </tr>
        </table>
        <hr />
    </div>
    <div class="divCompose" >
        <table style="width:100%">
            <tr><td><span class="span">To:</span></td></tr>
            <tr><td><asp:TextBox CssClass="textbox" ID="txtTo" runat="server" 
                    BackColor="#A6957F" ForeColor="#F0F0F0"></asp:TextBox></td></tr>
            <tr><td><span class="span">Subject:</span></td></tr>
            <tr><td><asp:TextBox CssClass="textbox" ID="txtSub" runat="server"></asp:TextBox></td></tr>
            
            <tr><td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td></tr>
                
            <tr><td><span class="span">Body:</span></td></tr>
            <tr><td><asp:TextBox CssClass="textbox" ID="txtBody" runat="server" 
                    TextMode="MultiLine" Height="250px"></asp:TextBox>
                
                </td></tr>
        </table>
        <hr />
        <table>
            <tr>
                <td>
                <asp:Button CssClass="Button" ID="Button1" runat="server" Text="Send" Width="75px" 
                        Height="25" onclick="btnSend_Click" ToolTip="Send" />
                </td>
                <td>
                <asp:Button CssClass="Button" ID="Button2" runat="server" Text="Discard" 
                        Width="100px" Height="25" onclick="btnDiscard_Click" ToolTip="Discard"/>
                </td>
                <td>
                <asp:Button CssClass="Button" ID="Button3" runat="server" Text="Save to Drafts" 
                        Width="125px" Height="25" onclick="btnDrafts_Click" ToolTip="Save to Drafts" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

