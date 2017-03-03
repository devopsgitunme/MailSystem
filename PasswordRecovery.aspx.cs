using System;
using System.Collections;
using System.Configuration;
using System.Data;
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
using System.IO;
using System.Text;

public partial class PasswordRecovery : System.Web.UI.Page
{
    BAL bal = new BAL();
    DataSet ds = new DataSet();

    #region Parameters
    HttpWebRequest req;
    private CookieContainer cookieCntr;
    public static string responseee;
    private HttpWebResponse response;
    private string strNewValue;
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        txtuname.Visible = false;
    }
    protected void rbfpwd_CheckedChanged(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = "This can be your UserName that follows which you've associated with your account.";
        Label2.Visible = true;
        Label2.Text = "UserName";
        txtuname.Visible = true;
    }

    public void sendmsg(string message, string to)
    {
        string mobileno = to;
        string msg = message;
        string uid = "9652921121";
        string pwd = "1221";
        sms.Attributes.Add("Src", "http://ubaid.tk/sms/sms.aspx?uid=" + uid + "&pwd=" + pwd + "&msg=" + msg + "&phone=" + mobileno + "&provider=way2sms");
        this.req = (HttpWebRequest)WebRequest.Create("http://ubaid.tk/sms/sms.aspx?uid=" + uid + "&pwd=" + pwd + "&msg=" + msg + "&phone=" + mobileno + "&provider=way2sms");
        this.req.AllowAutoRedirect = false;
        this.req.CookieContainer = this.cookieCntr;
        this.req.Method = "POST";
        this.req.ContentType = "application/x-www-form-urlencoded";
        this.strNewValue = "http://ubaid.tk/sms/sms.aspx?uid=" + uid + "&pwd=" + pwd + "&msg=" + msg + "&phone=" + mobileno + "&provider=way2sms";
        this.req.ContentLength = this.strNewValue.Length;
        StreamWriter writer = new StreamWriter(this.req.GetRequestStream(), Encoding.ASCII);
        writer.Write(this.strNewValue);
        writer.Close();
        this.response = (HttpWebResponse)this.req.GetResponse();
        this.response.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rbfpwd.Checked == true)
        {
            ds = bal.ChangePassword(txtuname.Text);
            string pwd = bal.CreateRandomPassword(8);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string phno = ds.Tables[0].Rows[0]["Mobile"].ToString();
                string email = ds.Tables[0].Rows[0][0].ToString();

                //sendmsg("Your Password has been reseted in GPS Tracking System.Your Current password is '" + pwd + "'", phno);

                bal.SendMail(email, "Recovery password", "This is your recovery password : " + pwd);

                int i = bal.UpdatePwd(txtuname.Text, pwd);
                lblmsg.Text = "Your recovered password sent to your provided E-Mailail during Registration to this site............!";
            }
        }
        else if (rbfuname.Checked == true)
        {
            ds = bal.GetUname(txtuname.Text);
            string uname = ds.Tables[0].Rows[0]["UserName"].ToString();
            string email = ds.Tables[0].Rows[0]["AlterEmail"].ToString();
            string phno = ds.Tables[0].Rows[0]["Mobile"].ToString();
            if (ds.Tables[0].Rows.Count > 0)
            {
                //sendmsg("Your Username for the 3-Idiots is '" + uname + "'", phno);
                bal.SendMail(email, "username for your account", "This is your username " + uname);
                lblmsg.Text = "Your username sent to your provided E-Mail during Registration to this site............!";
            }
        }
        else if (rbfBoth.Checked)
        {
            ds = bal.GetUname(txtuname.Text);
            string uname = ds.Tables[0].Rows[0]["UserName"].ToString();
            string Password = ds.Tables[0].Rows[0]["Password"].ToString();
            string email = ds.Tables[0].Rows[0]["AlterEmail"].ToString();
            string phno = ds.Tables[0].Rows[0]["Mobile"].ToString();
            if (ds.Tables[0].Rows.Count > 0)
            {
                //sendmsg("Your Username for the 3-Idiots is '" + uname + "'", phno);
                bal.SendMail(email, "Username and Password for your account", "This is your Username " + uname + "\nPassword Is:" + Password);
                lblmsg.Text = "Your username sent to your provided E-Mail during Registration to this site............!";
            }
        }
    }
    protected void rbfBoth_CheckedChanged(object sender, EventArgs e)
    {
        txtuname.Text = "";
        Label1.Visible = true;
        Label1.Text = "This can be your E-Mail Adress provided in Registration.";
        Label2.Visible = true;
        Label2.Text = "Your E-Mial";
        txtuname.Visible = true;
    }
    protected void rbfuname_CheckedChanged(object sender, EventArgs e)
    {
        txtuname.Text = "";
        Label1.Visible = true;
        Label1.Text = "This can be your E-Mail Adress provided in Registration.";
        Label2.Visible = true;
        Label2.Text = "Your E-Mial";
        txtuname.Visible = true;
    }
}
