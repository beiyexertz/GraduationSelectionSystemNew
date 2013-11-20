using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GraduationSelectionSystemNew
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string UserName1 = UserName.Text.Trim();
            string PassWord1 = Password.Text.Trim();
            string SqlStr = null;
            string ConnStr = System.Configuration.ConfigurationManager.AppSettings["connstring"];
            //此处出于安全考虑需要从前台杜绝用户名含有特殊字符，此处也要做替换
            UserName1 = ReplaceSQLChar(UserName1);
            SqlStr = "Select * from [GraduteChooseSystem].[dbo].[T_UserInfo] where userID='" + UserName1 + "'";
            SqlConnection SqlCon = new SqlConnection(ConnStr);
            System.Data.DataSet LoginDS = new System.Data.DataSet();
            SqlDataAdapter Sda = new SqlDataAdapter(SqlStr, SqlCon);
            try
            {
                SqlCon.Open();
                Sda.Fill(LoginDS);
               
            }
            catch (Exception ex)
            {
            }
            finally {
                SqlCon.Close();
                Sda.Dispose();
            }

            if (LoginDS.Tables[0].Rows.Count > 0)
            {
                if (LoginDS.Tables[0].Rows[0]["password"].ToString() == PassWord1)
                {
                    string LoginType = LoginDS.Tables[0].Rows[0]["userRight"].ToString();
                    TextLabel.Text = "登陆成功";
                    Session["UserName"] = LoginDS.Tables[0].Rows[0]["userID"];
                    if (PassWord1 == "123456")
                    {
                        Response.Redirect("ChangeProfile.aspx");
                    }
                    switch (LoginType)
                    {
                        case "0":
                            Response.Redirect("AdminLogin.aspx");
                            break;
                        case "1":
                            HttpContext.Current.Response.Redirect("StudentLogin.aspx");
                            break;
                        case "2":
                            Response.Redirect("TeacherLogin.aspx");
                            break;
                    }

                }
                else
                {
                    TextLabel.Text = "用户名或密码错误";
                }
            }
            else
            {
                TextLabel.Text = "用户名不存在";
            }

        }
        protected string ReplaceSQLChar(string str)
        {
            if (str == String.Empty) return String.Empty;
            str = str.Replace("'", "");
            str = str.Replace(";", "");
            str = str.Replace(",", "");
            str = str.Replace("?", "");
            str = str.Replace("<", "");
            str = str.Replace(">", "");
            str = str.Replace("(", "");
            str = str.Replace(")", "");
            str = str.Replace("@", "");
            str = str.Replace("=", "");
            str = str.Replace("+", "");
            str = str.Replace("*", "");
            str = str.Replace("&", "");
            str = str.Replace("#", "");
            str = str.Replace("%", "");
            str = str.Replace("$", "￥");
            return str;
        }
        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}