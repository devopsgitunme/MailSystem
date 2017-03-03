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

public partial class Reg : System.Web.UI.Page
{
    BAL bal = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton2.Visible = false;
        if (!IsPostBack)
        {
            //lblCaptcha.Text = bal.CreateRandomPassword(8);
            ddlYear.Items.Add("<---Year--->");
            ddlDay.Items.Add("<---Day--->");
            for (int i = 1985; i <= 2000; i++)
            {
                ddlYear.Items.Add(i.ToString());
                ddlYear.DataBind();
            }
            for (int j = 1; j <= 31; j++)
            {
                ddlDay.Items.Add(j.ToString());
                ddlDay.DataBind();
            }        
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_Register_Click(object sender, EventArgs e)
    {
        try
        {
            int i;
            if (CheckBox1.Checked == true)
            {
                CaptchaControl1.ValidateCaptcha(txtcaptcha.Text);
                #region btncode
                string dob = ddlDay.SelectedItem.Value + "-" + ddlMonth.SelectedItem.Value + "-" + ddlYear.SelectedItem.Value;
                string fullname = txtFname.Text + " " + txtLname.Text;
                if (CaptchaControl1.UserValidated)
                {
                    i = bal.reg(dob, fullname, ddlGender.SelectedItem.Value, txtUname.Text + "@canoysoft.com", txtPassword.Text, txtEmail.Text, txtPhno.Text, txtAdd.Text, ddlBatch.SelectedItem.Value, Convert.ToBoolean(1), ddlQues.SelectedItem.ToString(), txtSecAns.Text, Convert.ToBoolean(1));
                    if (i > 0)
                    {
                        lblmsg.Text = "registration success Please ";
                        lblmsg1.Text = " to login";
                        LinkButton2.Visible = true;
                        txtFname.Text = "";
                        txtLname.Text = "";
                        txtAdd.Text = "";
                        txtcaptcha.Text = "";
                        txtCPassword.Text = "";
                        txtEmail.Text = "";
                        txtSecAns.Text = "";
                        txtPassword.Text = "";
                        txtPhno.Text = "";
                        txtUname.Text = "";
                        ddlBatch.SelectedIndex = 0;
                        ddlGender.SelectedIndex = 0;
                        ddlYear.SelectedIndex = 0;
                        ddlQues.SelectedIndex = 0;
                        CheckBox1.Checked = false;
                        
                    }
                    else
                    {
                        lblmsg.Text = " this  register number is already used";
                        lblmsg1.Visible = false;
                        LinkButton2.Visible = false;
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('The Captcha Code is in correct....!')</script>");
                    //lblCaptcha.Text = bal.CreateRandomPassword(8);
                }
                #endregion
            }
            else
            {
                
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You must agree with the Canoysoft Terms and conditions')</script>");
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('"+ex.Message+"')</script>");
        }
    }
    protected void txtno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
            //if (CheckBox1.Checked == true)
            //{
            //    Btn_Register.Enabled = true;
            //}
            //else
            //{
            //    Btn_Register.Enabled = false;
            //}
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //lblCaptcha.Text = bal.CreateRandomPassword(8);
    }
}
