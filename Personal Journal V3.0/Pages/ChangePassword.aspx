<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Pages/ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>
<%-- Page to change the password after a user has been autheticated --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="~/Stylesheet/WPL_StyleSheet.css" />
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
        #page_heading {
            color: #0006fc;
            font-size:x-large;
            font-weight:bold;
            text-align: left;
            width: 270px;
        }
    </style>
    <title>Change Password: Personal Journal</title></head>
<body id="background_image">
    <h1 id="dimension">
        <img id="logo" src="../images/5136-Holly-Quill-BookBox2721.jpg"/>
    </h1>
    <div id="page_heading">
        <label><u>Change Password</u></label>
    </div>
    <form id="form1" runat="server">
    <div>
    <table id="ChangePasswordTable">
            <tr>
                <td id="SignUpLabel">*Password:</td>
                <td><asp:TextBox runat="server" id="NewUserPassword" type="password" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Confirm Password:</td>
                <td><asp:TextBox runat="server" id="NewUserPassword2" type="password" /></td>
            </tr>
            <tr>
                <td id="Td1">&nbsp;</td>
                <td>
                    <asp:Button id="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
