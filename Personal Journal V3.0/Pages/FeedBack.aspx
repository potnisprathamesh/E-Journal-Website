<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Pages/FeedBack.aspx.cs" Inherits="FeedBack" %>

<!DOCTYPE html>
<%-- Webpage to allow a logged in user to provide feedback of the website --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Journal...</title>
    <link href="~/Stylesheet/WPL_StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body id="background_image">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Font-Size="Large">
            <table id="FormTable" runat="server">
                <tr>
                    <td colspan="3">
                        <h1>Contact Us </h1>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="font-weight: bold">Use the Form below to  get in touch with us. Enter your name, e-mail, address, contact number and your feedback.
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Your Name
                    </td>
                    <td>

                        <asp:TextBox ID="txtName" runat="server" CausesValidation="true" ToolTip="Enter your Name here" Width="150px"></asp:TextBox>

                    </td>
                    <td>

                        <asp:RegularExpressionValidator ID="regexpName" runat="server" ControlToValidate="txtName" ErrorMessage="This expression does not validate." ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter your Name" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td style="font-weight: bold">E-Mail
                    </td>
                    <td>

                        <asp:TextBox ID="txtEMail" runat="server" Width="150px"></asp:TextBox>

                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your E-mail." ControlToValidate="txtEMail" Display="Dynamic" SetFocusOnError="true" TabIndex="1"></asp:RequiredFieldValidator>


                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid E-Mail" ControlToValidate="txtEMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                    </td>

                </tr>
                <tr>
                    <td style="font-weight: bold">Contact Number
                    </td>
                    <td>

                        <asp:TextBox ID="txtNumber" runat="server" Width="150px"></asp:TextBox>

                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your contact number" ControlToValidate="txtNumber"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="Please enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>

                    </td>

                </tr>
                <tr>
                    <td style="font-weight: bold">Suggestion/Complaint
                    </td>
                    <td>

                        <asp:TextBox ID="txtComment" runat="server" Width="207px" Height="84px" TextMode="MultiLine" ToolTip="Please give your comment"></asp:TextBox>

                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtComment" ErrorMessage="Please enter your feedback" SetFocusOnError="True">*</asp:RequiredFieldValidator>

                    </td>

                </tr>
                <tr>

                    <td>
                        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" Width="95px" Style="text-align: center" />
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
