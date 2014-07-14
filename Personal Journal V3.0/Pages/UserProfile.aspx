<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="~/Pages/UserProfile.aspx.cs" Inherits="_Default" %>

<%-- WEbpage to allow a user to update his profile settings --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        #logo {
            height: 100px;
            width: 140px;
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
        
         .auto-style1 {
             width: 143px;
         }
        
         .auto-style2 {
             width: 243px;
         }
        
    </style>
    <h1 id="dimension">
        <img id="logo" src="../images/5136-Holly-Quill-BookBox2721.jpg"/>
    </h1>

<div id="container">
  
    <div id="center" class="column">
  <div id="page_heading">
    <label><u>Forgot Password</u></label>
    </div>
                 
    <div>
     <table id="ForgotPasswordTable">
            <tr>
                <td id="SignUpLabel">*Email Address: </td>
                <td><asp:TextBox runat="server" id="UserEmail" type="text" /></td>
            </tr>
            <tr>
                <td id="Td1">*Username:</td>
                <td><asp:TextBox runat="server" id="Username" type="text" /></td>
            </tr>
            <tr>
                <td id="Td2">*Select Security Question:</td>
                <td><asp:DropDownList ID="UserSecQuestion" runat="server">
                        <asp:ListItem>What is the name of your pet?</asp:ListItem>
                        <asp:ListItem>What is your favorite holiday destination?</asp:ListItem>
                        <asp:ListItem Selected="True">What is the maiden name of your mother?</asp:ListItem>
                        <asp:ListItem>Where were you at New Year's eve of 2000?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td id="Td3">*Enter Security Answer:</td>
                <td><asp:TextBox runat="server" id="UserSecAnswer" type="text" /></td>
            </tr>

            <tr>
                <td id="Td4">&nbsp;</td>
                <td>
                    <asp:Button id="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            </tr>

        </table>
    </div>

  </div>
  
</div>
</asp:Content>

