<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GraduationSelectionSystemNew.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上海海洋大学毕业设计选题系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="TextLabel" runat="server" Text="欢迎登陆"></asp:Label>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text="用户名"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text="密码"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RadioButton ID="StudentLogin" GroupName="LoginType" Text="学生登录" runat="server" /></td>
                    <td><asp:RadioButton ID="TeacherLogin" GroupName="LoginType" Text="老师登录" runat="server" /></td>
                    <td><asp:RadioButton ID="AdminLogin" GroupName="LoginType" Text="管理员登录" runat="server" /></td>
                </tr>
            </table>
            <div>
          <asp:Button ID="Submit" runat="server" Text="登陆" OnClick="Submit_Click" /></div>
        </div>
    </form>
</body>

</html>
