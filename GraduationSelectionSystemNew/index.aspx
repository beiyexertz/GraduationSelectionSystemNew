<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GraduationSelectionSystemNew.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上海海洋大学毕业设计选题系统</title>
   <style type="text/css">
        html{
            background-color: #81aeab;
            background-image: -moz-linear-gradient(top, #71a4a1 0%, #81aeab 20%);
            background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, #71a4a1),color-stop(0.2, #81aeab));
        }
        body {
            color: #333;
            font: 12px/18px Corbel, Arial, Helvetica, sans-serif;
            text-align: justify;
            vertical-align: middle;
        }
         #header {
            background: url(images/header-bg.jpg) no-repeat;
            background-color: #0facea;
            border-color: #59780a;
            height: 200px;
            border-bottom: 3px solid;
            position: relative;
        }
            #page {
            margin: 0px auto;
            width: 800px;
            border-bottom: 5px solid;
            border-left: 5px solid;
            border-right: 5px solid;
            border-color: #d5e6eb;
            background-color: #0facea;
        }
        table{
            z-index: -1;
            border-spacing:0px;
            background: #ebe8d9;
            padding:10px;
            height: 280px;
            margin:auto;
            vertical-align: middle;
            border-radius: 15px;
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            box-shadow: 0 0 10px #629996;
            -moz-box-shadow: 0 0 10px #629996;
            -webkit-box-shadow: 0 0 10px #629996;
            margin-top: 50px;
            margin-bottom:50px;

        }
        th{
            height:50px;
            width:150px;
            font-size:25px;
            text-align: center;
            font-family: "微软雅黑";
            
            color: #7acc10;
        }
        th:hover{
            position: relative;
            top:1px;
            left:1px;
        }
        td:hover{
            position: relative;
            top:1px;
            left:1px;
        }
        tr{
            border-radius: 10px;
            width: 390px;
            height: 40px;
            pandding:5px;
            margin-bottom: 15px;
            
        }

        td{
            text-align: center;

        }
        p{
            font-size: 30px;
        }

        #donodisp{
            display: none;
        }
        input {
            width:200px;
            height: 25px;
        }
        #welcome{
            font-size: 25px;
            font-family:"微软雅黑";
            margin: auto;
            text-align: center;
            margin-top: 40px;
            color: #cc0d0a;
            font-weight: bold;
        }
       #login {
           font-size:10px;
           font-family:"微软雅黑";
       }
    </style>
    <script language="JavaScript">
        //js检测是否输入用户名和密码
    </script>
</head>
<body>
    <div id="page">
        <div id="header">
        <!--PageHeaderFmt-->
        <div id="siteheader">
            <div class="sitetag" >上海海洋大学选课系统</div>
        </div>
        <!--/PageHeaderFmt-->

        <!--PageTabsFmt-->
        <div id="nav">
            
            </li></ul>

        </div>
        <!--/PageTabsFmt-->
    </div>
    <form id="form1" runat="server">
         <div id="welcome">欢迎登陆上海海洋大学选题系统</div>
        <div>
            
            <table>
                <tr>
                    <th>
                        <asp:Label ID="UserNameLabel" runat="server" Text="用户名"></asp:Label></th>
                    <td class="tdc">
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="PasswordLabel" runat="server" Text="密码"></asp:Label></th>
                    <td class="tdc">
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
                </tr>
                <tr id="donodisp">
                    <td><asp:RadioButton ID="StudentLogin" GroupName="LoginType" Text="学生登录" runat="server" /></td>
                    <td><asp:RadioButton ID="TeacherLogin" GroupName="LoginType" Text="老师登录" runat="server" /></td>
                    <td><asp:RadioButton ID="AdminLogin" GroupName="LoginType" Text="管理员登录" runat="server" /></td>
                </tr>
                <tr>
                    <td><div class="login">
                        <asp:Button ID="Submit" runat="server" Text="登陆" OnClick="Submit_Click" /></div></td>
                    <td>
                        <a href="VerfiyPass.aspx"><asp:Label ID="ForgetPass" runat="server" Text="忘记密码"></asp:Label></a>
                    </td>
                </tr>
            </table>
            <asp:Label ID="TextLabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
    </div>
</body>

</html>
