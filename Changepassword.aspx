<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: medium;
            border-bottom: thin;
        }
        .style8
        {
            width: 1151px;
        }
        .style9
        {
            font-size: 16pt;
        }
        .style10
        {
            width: 385px;
        }
        .style11
        {
            font-size: 16pt;
            width: 385px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr class="style5">
            <td>
            </td>
            <td>
            </td>
            <td class="style8">
            </td>
            <td class="style10">
            </td>
            <td>
                <asp:LinkButton ID="lbHome" runat="server" PostBackUrl="~/StudentHome.aspx" 
                    CausesValidation="False" style="font-size: 16pt">Home</asp:LinkButton>
            </td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" style="font-size: x-large" Text="Label"></asp:Label>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
                                <td class="style10">
                                    <asp:Label ID="Label1" runat="server" 
                                        Text="For privacy issues please change your password" ForeColor="#854AFF"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr class="style5">
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr class="style5">
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td class="style10">
                                    <span class="style9">New Password</span><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewpwd" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtNewpwd" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                Conform Password<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtNewpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Password must match" style="font-size: 12pt"></asp:CompareValidator>
                <br />
                <asp:TextBox ID="txtcpwd" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Change" 
                    Width="90px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="style5">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

