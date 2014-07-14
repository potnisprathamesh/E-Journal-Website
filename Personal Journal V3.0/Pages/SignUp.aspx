<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Pages/SignUp.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html>
<%-- WEbpage to add a new user --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/Stylesheet/WPL_StyleSheet.css"/>
    <title>Sign Up: Personal Journal</title>
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
        hr {
            width:500px;
            text-align:left;
            color:#000000;
            stroke-width:600px;
            height: 5px;
        }
  

        .auto-style1 {
            width: 1104px;
            height: 16px;
            position: absolute;
            top: 1100px;
        }
  

    </style>
</head>
<body id="background_image">
    <h1 id="dimension">
        
        <img id="logo" src="../images/5136-Holly-Quill-BookBox2721.jpg"/>
    </h1>
    <div id="page_heading">
    <label><u>Create an Account</u></label>
    </div>
    <form id="form1" runat="server">
    <div>
    
        <table id="SignUpTable">
            <tr>
                <td id="SignUpLabel">*First Name: </td>
                <td><asp:TextBox runat="server" id="NewUserFirstName" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Last Name:</td>
                <td><asp:TextBox runat="server" id="NewUserLastName" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Email Address:</td>
                <td><asp:TextBox runat="server" id="NewUserEmail" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Username:</td>
                <td><asp:TextBox runat="server" id="NewUserName" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Password:</td>
                <td><asp:TextBox runat="server" id="NewUserPassword" type="password" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Confirm Password:</td>
                <td><asp:TextBox runat="server" id="NewUserPassword2" type="password" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Choose Security Question:</td>
                <td><asp:DropDownList ID="NewUserSecQuestion" runat="server">
                        <asp:ListItem>What is the name of your pet?</asp:ListItem>
                        <asp:ListItem>What is your favorite holiday destination?</asp:ListItem>
                        <asp:ListItem Selected="True">What is the maiden name of your mother?</asp:ListItem>
                        <asp:ListItem>Where were you at New Year's eve of 2000?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Enter Security Answer:</td>
                <td><asp:TextBox runat="server" id="NewUserSecAnswer" type="text" /></td>
            </tr>

            <tr>
                <td id="SignUpLabel">&nbsp;</td>
                <td>
                    <asp:Button id="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            </tr>

        </table>
    
    </div>
    </form>

    
</body>
</html>
