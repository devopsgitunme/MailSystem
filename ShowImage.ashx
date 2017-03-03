<%@ WebHandler Language="C#" Class="ShowImage" %>

using System;
using System.Configuration;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public class ShowImage : IHttpHandler {
    Int32 imgID = 0;
    Int32 did = 0;
    Stream strm;
    public void ProcessRequest (HttpContext context) {
        //Int32 imgID=0;
        //Int32 did=0;
        
        if (context.Request.QueryString["Mailid"] != null)
        {
            imgID = Convert.ToInt32(context.Request.QueryString["Mailid"]);
            strm = ShowAttach(imgID);
        }
        else if (context.Request.QueryString["did"] != null)
        {
            did = Convert.ToInt32(context.Request.QueryString["did"]);
            strm = ShowAttach(did);
        }
        else
            throw new ArgumentException("No parameter specified");
        
        //context.Response.ContentType = "image/jpeg";
            
        
        byte[] buffer = new byte[4096];
        int byteSeq = strm.Read(buffer, 0, 4096);

        while (byteSeq > 0)
        {
            context.Response.OutputStream.Write(buffer, 0, byteSeq);
            byteSeq = strm.Read(buffer, 0, 4096);
        }
    }

    public Stream ShowAttach(int id)
    {
        string sql="";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        if (imgID != 0)
        {
             sql= "SELECT FileContent FROM Attachments WHERE MailId = '"+imgID+"'";
        }
        if (did != 0)
        {
            sql = "SELECT FileContent FROM Drafts WHERE DraftId = '"+did+"'";
        }
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@ID", id);
        con.Open();
        object img = cmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])img);
        }
        catch
        {
            return null;
        }
        finally
        {
            con.Close();
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}