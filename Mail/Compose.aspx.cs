using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mail_Compose : System.Web.UI.Page
{
    
    BAL bal = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        int j=0;
        Byte[] imgByte = null;
        string time = DateTime.Now.ToString();
        string Filename;
        string Uname = Session["username"].ToString();
        string[] Tolist = txtTo.Text.Split(',');

        HttpPostedFile File = FileUpload1.PostedFile;
        imgByte = new Byte[File.ContentLength];
        File.InputStream.Read(imgByte, 0, File.ContentLength);
        Filename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);

        for (int i = 0; i < Tolist.Length; i++)
        {
            if (FileUpload1.HasFile)
            {
                j = bal.ComposeAttach(Tolist[i], Uname, txtSub.Text, txtBody.Text, time, Filename, imgByte);
            }
            else
            {
                j = bal.ComposewithoutAttach(Tolist[i], Uname, txtSub.Text, txtBody.Text, time);
            }
        }
        if(j>0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Mail Sent Successfully to "+txtTo.Text+"')</script>");
            txtTo.Text = txtSub.Text = txtBody.Text = "";
        }
    }
    protected void btnDrafts_Click(object sender, EventArgs e)
    {
        int j = 0;
        Byte[] imgByte = null;
        string time = DateTime.Now.ToShortDateString();
        string Filename;
        string Uname = Session["username"].ToString();
        string[] Tolist = txtTo.Text.Split(',');
        for (int i = 0; i < Tolist.Length; i++)
        {
            if (FileUpload1.HasFile)
            {
                HttpPostedFile File = FileUpload1.PostedFile;
                imgByte = new Byte[File.ContentLength];
                File.InputStream.Read(imgByte, 0, File.ContentLength);
                Filename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);

                j = bal.DraftAttach(Uname,Tolist[i], txtSub.Text, txtBody.Text, time, Filename, imgByte);
            }
            else
            {
                j = bal.DrafwithoutAttach(Uname,Tolist[i], txtSub.Text, txtBody.Text, time);
            }
        }
        if (j > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Mail Saved to Drafts....!')</script>");
            txtTo.Text = txtSub.Text = txtBody.Text = "";
        }
    }
    protected void btnDiscard_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Mail/UserInbox.aspx");
    }
} 