<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: medium;
        }
        .style10
        {
            width: 723px;
        }
        .style11
        {
            width: 169px;
        }
        .style12
        {
            font-size: 18pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Having trouble signing in?&nbsp;</p>
    <table class="style1">
        <tr class="style5">
            <td><iframe id="sms" runat="server" width="10" height="10" visible="false"></iframe>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                <asp:RadioButton ID="rbfpwd" runat="server" style="font-size: 16pt" 
                    AutoPostBack="True" oncheckedchanged="rbfpwd_CheckedChanged" 
                    GroupName="pwd" Text="I've forgotten my password" />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                <asp:RadioButton ID="rbfuname" runat="server" AutoPostBack="True" 
                    GroupName="pwd" oncheckedchanged="rbfuname_CheckedChanged" 
                    style="font-size: 16pt" Text="I've forgotten my username" />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                <asp:RadioButton ID="rbfBoth" runat="server" AutoPostBack="True" 
                    GroupName="pwd" oncheckedchanged="rbfBoth_CheckedChanged" 
                    style="font-size: 16pt" Text="I've forgotten my username and Password" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="font-size: small" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label2" runat="server" style="font-size: 14pt" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtuname" runat="server" Width="220px"></asp:TextBox>
                
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GoTo" 
                    Width="90px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

