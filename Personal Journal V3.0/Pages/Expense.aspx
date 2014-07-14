<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="~/Pages/Expense.aspx.cs" Inherits="NewUser" %>
<%-- Webpage to view and add the users expenses --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="top: 150px; left: 400px; position: absolute; height: 523px; width: 1100px; font-weight: bold">
        &nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Style="position: relative; top: 21px; left: 61px; width: 127px" CausesValidation="True"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDate" runat="server" Text="Date :" Style="top: 7px; left: 505px; position: absolute; height: 19px; width: 39px"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" Style="top: 39px; left: 510px; position: absolute; height: 188px; width: 259px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 1; left: 589px; top: 8px; position: absolute"></asp:TextBox>

        <br />
        &nbsp;
        <asp:Label ID="lblName" runat="server" Text="Name" Style="position: absolute; top: 24px; left: 1px; height: 19px; width: 37px; right: 1062px;"></asp:Label>
        &nbsp;&nbsp;
        <br />

        <asp:RegularExpressionValidator ID="regexpName" runat="server" ControlToValidate="txtName" ErrorMessage="This expression does not validate." ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />

        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Amount" Style="z-index: 1; left: 4px; top: 66px; position: absolute"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAmount" runat="server" Style="position: absolute; z-index: 1; left: 74px; top: 61px; width: 127px"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAmount" ErrorMessage="Please enter number." ValidationExpression="^[0-9]{0,6}(\.[0-9]{1,2})?$" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlStatus" runat="server" Style="z-index: 1; left: 76px; top: 120px; position: absolute; height: 22px; width: 133px">
            <asp:ListItem Selected="True">Lend</asp:ListItem>
            <asp:ListItem>Owe</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Style="z-index: 1; left: 74px; top: 158px; position: absolute; width: 179px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Lend/Owe"></asp:Label>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Style="z-index: 1; left: 132px; top: 200px; position: absolute" />
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="../images/CalendarIcon.gif" Style="z-index: 1; left: 553px; top: 9px; position: absolute; width: 23px; height: 19px" />
        <br />
        <asp:Label ID="lblComments" runat="server" Text="Comments"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblTest" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Delete" ShowSelectButton="true" />
                <asp:BoundField DataField="EXPDATE" HeaderText="EXPDATE" SortExpression="EXPDATE" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                <asp:BoundField DataField="LEND_OWE" HeaderText="LEND_OWE" SortExpression="LEND_OWE" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="COMMENTS" HeaderText="COMMENTS" SortExpression="COMMENTS" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDiaryConnectionString %>" SelectCommand="SELECT * FROM [EXPENSE]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lblOwedAmount" runat="server" Text="Total Amount Owed"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtOwedAmount" runat="server"></asp:TextBox>
        <br />

    </div>
</asp:Content>

