<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Pages/ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>
<%-- authenticate user before allowing them to change their password --%>
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
    <title>Forgot Password: Personal Journal</title></head>
<body id="background_image">
    <h1 id="dimension">
        
        <img id="logo" src="../images/5136-Holly-Quill-BookBox2721.jpg"/>
    </h1>
    <div id="page_heading">
    <label><u>Forgot Password</u></label>
    </div>
    <form id="form1" runat="server">
    <div>
     <table id="ForgotPasswordTable">
            <tr>
                <td id="SignUpLabel">*Email Address: </td>
                <td><asp:TextBox runat="server" id="UserEmail" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Username:</td>
                <td><asp:TextBox runat="server" id="Username" type="text" /></td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Select Security Question:</td>
                <td><asp:DropDownList ID="UserSecQuestion" runat="server">
                        <asp:ListItem>What is the name of your pet?</asp:ListItem>
                        <asp:ListItem>What is your favorite holiday destination?</asp:ListItem>
                        <asp:ListItem Selected="True">What is the maiden name of your mother?</asp:ListItem>
                        <asp:ListItem>Where were you at New Year's eve of 2000?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td id="SignUpLabel">*Enter Security Answer:</td>
                <td><asp:TextBox runat="server" id="UserSecAnswer" type="text" /></td>
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
