<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Pages/Login.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/Stylesheet/WPL_StyleSheet.css" />
    <title>Personal Journal...</title>
    <style type="text/css">
        #logo {
            height: 100px;
            width: 140px;
            top: 0px;
            left: 0px;
            position: absolute;
        }
        #dimension {
            height: 100px;
            width: 140px;
        }
        .auto-style1 {
            width: 409px;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body id="background_image">
    <h1 id="dimension">
<img id="logo" src="../images/5136-Holly-Quill-BookBox2721.jpg"/>
    </h1>
    <table style="font-size: x-large">
    <tr>
        <td><form id="form1" runat="server">
    <div style="width: 358px">
        <asp:Login ID="LoginForm" runat="server" CreateUserText="Sign Up Now!!" DisplayRememberMe="False" 
            ForeColor="#0006FC" PasswordRecoveryText="Forgot Password?" TitleText="Log In ..." Width="317px" 
            TabIndex="1" style="margin-top: 12px" Height="151px" CreateUserUrl="SignUp.aspx" 
            OnAuthenticate="LoginForm_Authenticate" PasswordLabelText="*Password:" PasswordRecoveryUrl="ForgotPassword.aspx" 
            UserNameLabelText="*User Name:">
        </asp:Login>
    </div>
    </form></td>
        <td class="auto-style1"  text-align:"left">
            <ul>
                <li>Maintain your daily activities             <li>Read your life entries any time you want.</li>
                <li>Enter your daily expenses.</li>
                <li>It's always going to be free!!</li>
            </ul>
        </td>
    </tr>
        
</table>
    <div id="footer" style="left: 10px; top:1104px; height:18px; width:1100px; z-index: 1; position: absolute;">
       <!-- <asp:Label ID="copyright" runat="server" Text="Copyright © personaljournal.com"></asp:Label>
        &nbsp;
         <p><span style="text-align:right"></span>
             <a href="FeedBack.aspx" >FeedBack</a>
         </p>                                 -->
            <pre class="auto-style1"> Copyright © personaljournal.com                                                                                                   <a href="FeedBack.aspx" >FeedBack</a></pre>
        </div>
    </body>

</html>
