using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Mail_DetailsView : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    string FileName;
    protected void Page_Load(object sender, EventArgs e)
    {

        int Id=Convert.ToInt32(Request["id"]);
        if (Id != 0)
        ds = BAL.GetMailDetails(Id);

        int dId = Convert.ToInt32(Request["did"]);
        if(dId!=0)
        ds = BAL.GetDraftDetails(dId);
        

        lblSubject.Text = ds.Tables[0].Rows[0]["Subject"].ToString();
        lblSub.Text = ds.Tables[0].Rows[0]["Subject"].ToString();
        lblBody.Text = ds.Tables[0].Rows[0]["Body"].ToString();
        lblToId.Text = ds.Tables[0].Rows[0]["ToId"].ToString();
        lblFromID.Text = Session["username"].ToString();
        lblDate.Text = ds.Tables[0].Rows[0]["Time"].ToString();
        FileName=ds.Tables[0].Rows[0]["Filename"].ToString();

        if (FileName!="")
        {
            imgAttach.Visible = true;
            LinkDownload.Visible = true;
            LinkView.Visible = true;
            lblFilename.Visible = true;
            lblFilename.Text = FileName;

            string[] fname = FileName.Split('.');

            if (fname[1] == "doc" || fname[1] == "docx")
            {
                imgAttach.ImageUrl = "~/ExtImages/doc.png";
            }
            else if (fname[1] == "xls" || fname[1] == "xlsx")
            {
                imgAttach.ImageUrl = "~/ExtImages/excel.png";
            }
            else if (fname[1] == "ppt" || fname[1] == "pptx")
            {
                imgAttach.ImageUrl = "~/ExtImages/ppt.png";
            }
            else if (fname[1] == "pdf")
            {
                imgAttach.ImageUrl = "~/ExtImages/pdf.png";
            }
            else if (fname[1] == "rar")
            {
                imgAttach.ImageUrl = "~/ExtImages/rar.png";
            }
            
            for (int i = 0; i < fname.Length; i++)
            {
                if (fname[i] == "jpg" || fname[i] == "png")
                {
                    if (Id != 0)
                    imgAttach.ImageUrl = "~/ShowImage.ashx?Mailid=" + Id;

                    if (dId != 0)
                        imgAttach.ImageUrl = "~/ShowImage.ashx?did=" + dId;
                    imgAttach.Height = 150;
                    imgAttach.Width = 250;
                }
            }
        }
    }
    protected void LinkDownload_Click(object sender, EventArgs e)
    {
        Byte[] bytes = (Byte[])ds.Tables[0].Rows[0]["FileContent"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "image/jpg,bmp";
        Response.AddHeader("content-disposition", "attachment;filename=" + ds.Tables[0].Rows[0]["Filename"].ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
    protected void imgDelete_Click(object sender, ImageClickEventArgs e)
    {

    }
}