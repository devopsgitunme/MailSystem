<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" Title="Untitled Page" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 280px;
        }
        .style6
        {
        width: 666px;
    }
        .style7
        {
            height: 39px;
        }
        .style8
        {
        width: 666px;
        height: 39px;
    }
        .style9
        {
            width: 280px;
            height: 39px;
        }
        .style10
        {
            height: 23px;
        }
        .style11
        {
            width: 666px;
            height: 23px;
        }
        .style12
        {
            width: 280px;
            height: 23px;
        }
        .style13
        {
            font-size: x-large;
        }
        .style14
        {
            height: 23px;
            width: 485px;
        }
        .style15
        {
            height: 39px;
            width: 485px;
        }
        .style16
        {
            width: 485px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="font-size: large">
    <tr>
        <td class="style10">
            </td>
        <td class="style11">
                                </td>
        <td class="style12">
            </td>
        <td class="style14">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                ID="LinkButton1" runat="server" Font-Underline="False" 
                CausesValidation="False" PostBackUrl="~/Login.aspx" CssClass="style13">Login</asp:LinkButton>&nbsp;</td>
        <td class="style10">
                                </td>
    </tr>
    <tr>
        <td class="style7">
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
        </td>
        <td class="style15">
            Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtFname" ErrorMessage="*" SetFocusOnError="True">*</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtFname" runat="server" Width="125px" Height="25px"></asp:TextBox>
            &nbsp;            <%--<asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="First Name" TargetControlID="txtFname" Enabled="true">
            </asp:TextBoxWatermarkExtender>--%>&nbsp;&nbsp;
            <asp:TextBox ID="txtLname" runat="server" Width="125px" Height="25px"></asp:TextBox>
            <%-- <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" Enabled="true" WatermarkText="Last Name" TargetControlID="txtLname">
            </asp:TextBoxWatermarkExtender>--%>
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
&nbsp;Choose your username<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ControlToValidate="txtUname" 
                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtUname" runat="server" ontextchanged="TextBox2_TextChanged" 
                Width="275px" Height="25px"></asp:TextBox>
            @Canoysft.com</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Password<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" Width="275px" TextMode="Password" 
                Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Confirm Password<asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                ErrorMessage="Password Must Match"></asp:CompareValidator>
            <br />
            <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password" Width="275px" 
                Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Gender<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="ddlGender" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="ddlGender" runat="server" Height="25px" Width="275px">
                <asp:ListItem>I am</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Date Of Birth<br />
            <asp:DropDownList ID="ddlYear" runat="server" Height="25px" 
                Width="111px">
            </asp:DropDownList>
            &nbsp;&nbsp;<asp:DropDownList ID="ddlMonth" runat="server" 
                Height="25px" Width="110px">
                <asp:ListItem>&lt;---Month---&gt;</asp:ListItem>
                <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">Apr</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
                <asp:ListItem Value="7">Jul</asp:ListItem>
                <asp:ListItem Value="8">Aug</asp:ListItem>
                <asp:ListItem Value="9">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Width="110px" Height="25px">
            </asp:DropDownList>
&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Alternate
            E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="275px" Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                runat="server" ControlToValidate="txtPhno" 
                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPhno" runat="server" Width="275px" Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Address<br />
            <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine" Width="275px" 
                Height="50px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Select Your Platform<br />
            <asp:DropDownList ID="ddlBatch" runat="server" Height="25px" Width="275px">
                <asp:ListItem>Choose Your Platform</asp:ListItem>
                <asp:ListItem>.NET</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>Testing</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            Security Question<br />
            <asp:DropDownList ID="ddlQues" runat="server" Height="25px" Width="275px">
                <asp:ListItem>Choose Your Question</asp:ListItem>
                <asp:ListItem>Name of Your Childhood Friend</asp:ListItem>
                <asp:ListItem>Mother Maiden Name</asp:ListItem>
                <asp:ListItem>Your Pet Name</asp:ListItem>
                <asp:ListItem>Your lover name</asp:ListItem>
            </asp:DropDownList>
            <br />
            Answer<br />
            <asp:TextBox ID="txtSecAns" runat="server" Width="275px" Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            <cc1:CaptchaControl ID="CaptchaControl1" runat="server" 
                CaptchaChars="abdefghjkmnpqrstvwxyzACDEFGHJKLNPQRTUVXYZ2346789" 
                CaptchaHeight="75" CaptchaLength="6" 
                CaptchaWidth="275" BackColor="#EEE1BE" FontColor="82, 158, 0" 
                Width="300px" />
            Enter above code<br />
            <asp:TextBox ID="txtcaptcha" runat="server" Width="200px" Height="25px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to CanoySoft " 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                NavigateUrl="~/Terms and Conditions.aspx">Terms &amp; Conditions</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            <asp:Button ID="Btn_Register" runat="server" onclick="Btn_Register_Click" 
                Text="Register Me" Width="100px" CausesValidation="False" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style16">
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                PostBackUrl="~/Login.aspx">click here</asp:LinkButton>
            <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

