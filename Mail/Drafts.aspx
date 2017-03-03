<%@ Page Title="" Language="C#" MasterPageFile="~/Mail/MailMaster.master" AutoEventWireup="true" CodeFile="Drafts.aspx.cs" Inherits="Mail_Drafts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="~/CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="InboxHeader">
        <table>
            <tr><td><div id="divchk"><asp:CheckBox ID="ChkAll" runat="server" ToolTip="Select" 
                    AutoPostBack="true" OnCheckedChanged="SelectAll" Width="40px" Height="25px" /></div></td>
            <td><div class="divRefresh">
                <asp:ImageButton ID="Image1" runat="server" ToolTip="Refresh" 
                    Width="40px" Height="25px" onclick="Refersh" 
                    ImageUrl="~/Images/refresh_black.png" /></div></td>
            <td><div class="divRefresh">
                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Move To Trash" 
                    Width="40px" Height="25px" onclick="Delete" ImageUrl="~/Images/delete.png" 
                    Visible="False" /></div></td>
            <td></td>
            <td></td>
            <td></td></tr>
        </table>
    </div>
    <div id="InboxContent">
        <asp:GridView ID="GvDrafts" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" EnableModelValidation="True" 
            GridLines="None" onrowdatabound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField><ItemTemplate><asp:CheckBox ID="ChkSelect" runat="server" AutoPostBack="true" OnCheckedChanged="OpenDiv" /></ItemTemplate>
                    <ItemStyle Width="4%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MailId" Visible="False">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DraftId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DraftId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ToId" HeaderText="To">
                <ItemStyle Width="18%" />
                </asp:BoundField>
                <asp:BoundField DataField="Subject" HeaderText="Subject">
                <ItemStyle Width="23%" />
                </asp:BoundField>
                <asp:BoundField DataField="Body" HeaderText="Body" />
                <asp:TemplateField><ItemTemplate><asp:Image ID="img1" runat="server" Width="15px" Height="15px" /></ItemTemplate>
                    <ItemStyle Width="2%" />
                </asp:TemplateField>
                <asp:BoundField DataField="Time" HeaderText="Time">
                <ItemStyle Width="12%" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

