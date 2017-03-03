<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 113px;
        }
        .style7
        {
            width: 1040px;
        }
        .style8
        {
            font-size: 16pt;
            width: 113px;
            color: #3333FF;
        }
        .style9
        {
            height: 59px;
            width: 1330px;
            background-color: #D3D3D3;
        }
        .style12
        {
            width: 1040px;
            height: 32px;
        }
        .style13
        {
            width: 113px;
            height: 32px;
        }
        .style15
        {
            width: 1040px;
            height: 31px;
        }
        .style16
        {
            width: 113px;
            height: 31px;
        }
        .style18
        {
            height: 32px;
            width: 150px;
        }
        .style20
        {
            height: 31px;
            width: 150px;
        }
        .style21
        {
            height: 32px;
            width: 196px;
        }
        .style22
        {
            width: 196px;
        }
        .style23
        {
            height: 31px;
            width: 196px;
        }
        .style24
        {
            width: 1330px;
            height: 411px;
        }
        .style26
    {
        width: 150px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="style24">
    <tr>
        <td class="style9" colspan="4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;New User?&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" 
                ForeColor="Blue" NavigateUrl="~/Reg.aspx" 
                style="font-size: medium; border: thin #CC0000 groove; background-color: #FF3333; color: #FFFFFF">Create 
            New Account </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style12">
        </td>
        <td class="style13">
            </td>
        <td class="style21">
            </td>
        <td class="style18">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            UserName</td>
        <td class="style22">
            <asp:TextBox ID="txtUname" runat="server" Width="275px" Height="20px"></asp:TextBox>
        </td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            Password</td>
        <td class="style22">
            <asp:TextBox ID="txtPwd" runat="server" Width="275px" TextMode="Password" 
                Height="20px"></asp:TextBox>
        </td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            <asp:Button ID="Button1" runat="server" Height="26px" style="font-size: medium" 
                Text="Login" Width="80px" onclick="Button1_Click" />
        </td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Blue" 
                NavigateUrl="~/PasswordRecovery.aspx" style="font-size: medium">Can&#39;t Access 
            Your Account?</asp:HyperLink>
        </td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            </td>
        <td class="style16">
            </td>
        <td class="style23">
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red" style="font-size: medium"></asp:Label>
        </td>
        <td class="style20">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td class="style26">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
        <td class="style26">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

