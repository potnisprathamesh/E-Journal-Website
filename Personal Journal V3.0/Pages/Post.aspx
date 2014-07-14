<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="~/Pages/Post.aspx.cs" Inherits="Post" %>
<%-- Webpage to display and add a users daily posts --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="left: 150px;top:0px;height:900px; width:1100px;">


            <asp:TextBox ID="txtName" runat="server" style="text-align:left; top: 150px; left: 200px; position: absolute; height: 290px; width: 741px" Rows="10" TextMode="MultiLine"></asp:TextBox>
            <asp:Button id="Submit1" style="top: 200px; left: 1050px; position: absolute; height: 40px; width: 97px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: normal;" runat="server" Text="Submit" OnClick="Submit1_Click" />
            <asp:GridView ID="GridView1" runat="server" style="top: 550px; left: 203px; position: absolute; height: 288px; width: 745px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="QUICK_ENTRIES" HeaderText="Your Entries" SortExpression="QUICK_ENTRIES" />
                    <asp:BoundField DataField="POST_TIME" HeaderText="Time" SortExpression="POST_TIME" />
                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDIARYConnectionString %>" SelectCommand="SELECT QUICK_ENTRIES, POST_TIME FROM USER_POSTS WHERE (USERNAME = @USERNAME) AND (MONTH(POST_TIME) = @POST_TIME2) AND (YEAR(POST_TIME) = @POST_TIME) order by POST_TIME desc">
                <SelectParameters>
                    <asp:SessionParameter Name="USERNAME" SessionField="user" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="POST_TIME2" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="POST_TIME" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:Button ID="Button1" runat="server" style="top: 650px; left: 1075px; position: absolute; height: 26px; width: 56px" Text="Select" OnClick="Button1_Click" />
            <asp:Label ID="Label3" runat="server" style="top: 600px; left: 1050px; position: absolute; height: 19px; width: 51px" Text="Month :"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="top: 550px; left: 1050px; position: absolute; height: 19px; width: 42px" Text="Year :"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" style="top: 550px; left: 1103px; position: absolute; height: 19px; width: 82px">
                 <asp:ListItem>2013</asp:ListItem>
                 <asp:ListItem>2014</asp:ListItem>
            </asp:DropDownList>
</div>
<asp:DropDownList ID="DropDownList2" runat="server" style="top: 600px; left: 1103px; position: absolute; height: 19px; width: 82px">
   <asp:ListItem Value="1">January</asp:ListItem>
                <asp:ListItem Value="2">February</asp:ListItem>
                <asp:ListItem Value="3">March</asp:ListItem>
                <asp:ListItem Value="4">April</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">June</asp:ListItem>
                <asp:ListItem Value="7">July</asp:ListItem>
                <asp:ListItem Value="8">August</asp:ListItem>
                <asp:ListItem Value="9">September</asp:ListItem>
                <asp:ListItem Value="10">October</asp:ListItem>
                <asp:ListItem Value="11">November</asp:ListItem>
                <asp:ListItem Value="12">December</asp:ListItem>
</asp:DropDownList>
</asp:Content>

