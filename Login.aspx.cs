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

public partial class Login : System.Web.UI.Page
{
    BAL bal = new BAL();
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ds = bal.login(txtUname.Text, txtPwd.Text);
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            Session["username"] = ds.Tables[0].Rows[0]["UserName"].ToString();
            Session["studNmae"] = ds.Tables[0].Rows[0]["Name"].ToString();
            Session["Mail"] = ds.Tables[0].Rows[0]["AlterEmail"].ToString();
            Session["Mobile"] = ds.Tables[0].Rows[0]["Mobile"].ToString();
            string state = ds.Tables[0].Rows[0]["LoginStatus"].ToString();

            if (state == "False")
            {
                Response.Redirect("~Changepassword.aspx?uname=" + ds.Tables[0].Rows[0]["UserName"].ToString());
            }
            else
            {
                Response.Redirect("~/Mail/UserInbox.aspx?Uname=" + ds.Tables[0].Rows[0]["UserName"].ToString());
            }
        }
        else
        {
            lblmsg.Text = "Invalid Credentials...............!";
        }
    }
}
