using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Mail_UserInbox : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    DataSet ds = new DataSet();
    BAL bal = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
        
    }
    protected void BindGrid()
    {
        ds = bal.BindInbox(Session["username"].ToString(), "Mail");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                i++;
                string s = cell.Text;
                if (cell.Text.Length > 60)
                    cell.Text = cell.Text.Substring(0, 60);
                cell.ToolTip = s;
            }
            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#ffeb95';this.style.cursor='pointer';";
            e.Row.Attributes["onmouseout"] = "this.style.textDecoration='none';this.style.backgroundColor='#C6C3C6'";

            System.Data.DataRowView drv = e.Row.DataItem as System.Data.DataRowView;
            e.Row.Attributes.Add("onclick", String.Format("window.location='../Mail/MailDetails.aspx?id={0}'", drv["MailId"]));
        }
        string filename = ds.Tables[0].Rows[0]["Filename"].ToString();
        Image img = new Image();

        foreach (GridViewRow gvRow in GridView1.Rows)
        {
            img = (Image)gvRow.FindControl("img1") as Image;
            if (filename != "")
            {
                img.ImageUrl = "~/Images/attach.gif";
            }
            else
            {
                img.ImageUrl = "";
            }
        }
        
    }
    protected void OpenDiv(object sender, EventArgs e)
    {
        CheckBox chk1 = new CheckBox();
        foreach (GridViewRow gvRow in GridView1.Rows)
        {
            chk1 = (CheckBox)gvRow.FindControl("ChkSelect") as CheckBox;
            if (chk1.Checked)
            {
                break;
            }
        }
        if (chk1.Checked == true)
        {
            ImageButton1.Visible = true;
        }
        else
            ImageButton1.Visible = false;
    }
    protected void SelectAll(object sender, EventArgs e)
    {
        if (ChkAll.Checked == true)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox chkChild = (CheckBox)gvrow.FindControl("ChkSelect") as CheckBox;
                chkChild.Checked = true;
            }
            ImageButton1.Visible = true;
        }
        else
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox chkChild = (CheckBox)gvrow.FindControl("ChkSelect") as CheckBox;
                chkChild.Checked = false;
            }
            ImageButton1.Visible = false;
        }
    }
    protected void Refersh(object sender, ImageClickEventArgs e)
    {
        BindGrid();
    }
    protected void Delete(object sender, ImageClickEventArgs e)
    {
        try
        {
            CheckBox c = new CheckBox();
            Label l = new Label();
            int res = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                c = (CheckBox)GridView1.Rows[i].FindControl("ChkSelect");
                if (c.Checked == true)
                {
                    l = (Label)GridView1.Rows[i].FindControl("Label1");
                    int MailId = Convert.ToInt32(l.Text);

                    res = bal.MoveToTrash(MailId);

                }
            }
            if (res > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Dinesh Says......", "<script>alert('Moved to Trash...')</script>");
                BindGrid();
                ImageButton1.Visible = false;
            }


        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Dinesh Says......", "<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}