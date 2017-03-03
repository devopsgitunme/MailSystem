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
using System.Net;
using System.Net.Mail;

public class BAL
{
    DataSet ds = new DataSet();

    public DataSet login(string uname, string pwd)
    {
        return DBHelper.GetData("select * from UserInfo where UserName='"+uname+"' and Password='"+pwd+"'");
    }
    public string CreateRandomPassword(int pwdlen)
    {
        string ac = "123456789qwertyupasdfghjkzxcvbnmQWERTYUPASDFGHJKZXCVBNM";
        Random rand = new Random();
        char[] c = new char[pwdlen];
        int acCount = ac.Length;
        for (int i = 0; i < pwdlen; i++)
        {
            c[i] = ac[(int)(acCount * rand.NextDouble())];
        }
        return new string(c);
    }
    public int reg(string dob, string fullname,string ddlGender,string uname,string pwd,string altEmail,string phno,string Address,string batch, bool status,string secQues,string secAns,bool loginsate)
    {
        return DBHelper.InsertData("insert into UserInfo values ('" + fullname + "','" + uname + "','" + pwd + "','" + dob + "','" + ddlGender + "','" + phno + "','" + Address + "','" + batch + "','" + altEmail + "','"+secQues+"','"+secAns+"','"+loginsate+"','" + status + "')");
    }
    public DataSet ChangePassword(string uname)
    {
        return DBHelper.GetData("select AlterEmail,Mobile from UserInfo where UserName='" + uname + "'");
    }
    public int UpdatePwd(string uname, string pwd)
    {
        return DBHelper.InsertData("update UserInfo set Password='" + pwd + "',LoginStatus='False' where UserName='" + uname + "'");
    }
    public void SendMail(string MailId, string Subject, string Body)
    {
        SmtpClient serverobj = new SmtpClient();
        serverobj.Host = "smtp.gmail.com";
        serverobj.Credentials = new NetworkCredential("dineshkumar.movva7@gmail.com", "nani1221");
        MailMessage msgobj = new MailMessage();
        serverobj.EnableSsl = true;
        msgobj.From = new MailAddress("dineshkumar.movva7@gmail.com", "3-Idiots");
        msgobj.To.Add(MailId);
        msgobj.Subject = Subject;
        msgobj.Body = Body;
        serverobj.Send(msgobj);
    }
    public DataSet GetUname(string Email)
    {
        return DBHelper.GetData("select * from UserInfo where AlterEmail='" + Email + "'");
    }
    public int ComposeAttach(string Toid, string Sentid, string sub, string body, string time, string filename, byte[] filecontent)
    {
        int i = DBHelper.ComposeAttach(Toid, Sentid, sub, body, time, filename, filecontent);
        return i;
    }
    public int ComposewithoutAttach(string Toid, string Sentid, string sub, string body, string time)
    {
        int i = DBHelper.ComposeWithOutAttach(Toid, Sentid, sub, body, time);
        return i;
    }
    public DataSet BindInbox(string Uname, string Status)
    {
        return DBHelper.BindInbox(Uname,Status);
    }
    public DataSet BindSentItems(string Uname, string Status)
    {
        return DBHelper.BindSentItems(Uname, Status);
    }
    public int MoveToTrash(int MailId)
    {
        return DBHelper.MoveToTrash(MailId);
    }
    public DataSet BinDTrash(string Uname)
    {
        return DBHelper.BindTrash(Uname);
    }
    public DataSet BindDrafts(string Uname,string Status)
    {
        return DBHelper.BindDrafts(Uname,Status);
    }
    public int DraftAttach(string Uname, string Toid, string sub, string body, string time, string filename, byte[] filecontent)
    {
        int i = DBHelper.DraftAttach(Uname,Toid, sub, body, time, filename, filecontent);
        return i;
    }
    public int DrafwithoutAttach(string Uname, string Toid, string sub, string body, string time)
    {
        int i = DBHelper.DraftsWithOutAttach(Uname,Toid, sub, body, time);
        return i;
    }
    public int DeletePerminent(int MailId)
    {
        return DBHelper.DeletePerminent(MailId);
    }
    public static DataSet GetMailDetails(int MailId)
    {
        return DBHelper.GetData("select * from UserMails m left join Attachments a  on m.MailId=a.MailId where m.MailId='" + MailId + "'");
    }
    public static DataSet GetDraftDetails(int MailId)
    {
        return DBHelper.GetData("select * from Drafts where DraftId='" + MailId + "'");
    }
}
