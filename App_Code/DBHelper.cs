using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

/// <summary>
/// Summary description for DBHelper
/// </summary>
public class DBHelper
{
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    public static DataSet GetData(string stmt)
    {
        
        SqlDataAdapter sda = new SqlDataAdapter(stmt,con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        return ds;
    }
    public static int InsertData(string stmt)
    {
        SqlCommand cmd = new SqlCommand(stmt, con);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static int ComposeAttach(string Toid,string Sentid,string sub,string body,string time,string filename,byte[] filecontent)
    {
        SqlCommand cmd = new SqlCommand("Compose_Attach",con);
        cmd.Parameters.AddWithValue("@toid",Toid);
        cmd.Parameters.AddWithValue("@sentid", Sentid);
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@body", body);
        cmd.Parameters.AddWithValue("@time", time);
        cmd.Parameters.AddWithValue("@Filename", filename);
        cmd.Parameters.AddWithValue("@Filecontent", filecontent);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static int ComposeWithOutAttach(string Toid, string Sentid, string sub, string body, string time)
    {
        SqlCommand cmd = new SqlCommand("ComposeWithOutAttach", con);
        cmd.Parameters.AddWithValue("@toid", Toid);
        cmd.Parameters.AddWithValue("@sentid", Sentid);
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@body", body);
        cmd.Parameters.AddWithValue("@time", time);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static DataSet BindInbox(string Uname, string Status)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from UserMails m left join Attachments a  on m.MailId=a.MailId where m.ToId='" + Uname + "' and m.Status='" + Status + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static DataSet BindSentItems(string Uname, string Status)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from UserMails m left join Attachments a  on m.MailId=a.MailId where m.SentId='" + Uname + "' and m.Status='" + Status + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static int MoveToTrash(int MailId)
    {
        SqlCommand cmd = new SqlCommand("update UserMails set Status='Trash' where MailId='"+MailId+"'", con);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static DataSet BindTrash(string Uname)
    {
        SqlCommand cmd = new SqlCommand("BindTrash", con);
        cmd.Parameters.AddWithValue("@username",Uname);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.GetFillParameters();
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static DataSet BindDrafts(string Uname,string Status)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Drafts where UserName='"+Uname+"' and Status='"+Status+"'",con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static int DraftAttach(string Uname, string Toid, string sub, string body, string time, string filename, byte[] filecontent)
    {
        SqlCommand cmd = new SqlCommand("Drafts_Attach", con);
        cmd.Parameters.AddWithValue("@UserName", Uname);
        cmd.Parameters.AddWithValue("@toid", Toid);
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@body", body);
        cmd.Parameters.AddWithValue("@time", time);
        cmd.Parameters.AddWithValue("@Filename", filename);
        cmd.Parameters.AddWithValue("@Filecontent", filecontent);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static int DraftsWithOutAttach(string Uname, string Toid, string sub, string body, string time)
    {
        SqlCommand cmd = new SqlCommand("DraftsWithOutAttach", con);
        cmd.Parameters.AddWithValue("@toid", Toid);
        cmd.Parameters.AddWithValue("@UserName", Uname);
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@body", body);
        cmd.Parameters.AddWithValue("@time", time);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public static int DeletePerminent(int MailId)
    {
        SqlCommand cmd = new SqlCommand("DeletePermenant", con);
        cmd.Parameters.AddWithValue("@MailId", MailId);
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
}
