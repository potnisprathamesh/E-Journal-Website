<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="~/Pages/Home.aspx.cs" Inherits="Home" %>

<%-- Landing page for a logged in user --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="left: 150px;top:0px;height:900px; width:1100px;">

            
            
            <asp:Button id="Submit1" style="top: 200px; left: 1050px; position: absolute; height: 40px; width: 97px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: normal;" runat="server" Text="Submit" OnClick="Submit1_Click" />
            <asp:GridView ID="GridView1" runat="server" style="top: 553px; left: 200px; position: absolute; height: 274px; width: 762px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Quick_Entries" HeaderText="Your Entries" SortExpression="Quick_Entries" />
                    <asp:BoundField DataField="Post_Time" HeaderText="Time" SortExpression="Post_Time" />
                </Columns>
            </asp:GridView>
                                  
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDiaryConnectionString %>" SelectCommand="Select TOP 5 Quick_Entries, Post_Time from USER_POSTS where username=@username order by POST_TIME desc">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="user" />
                </SelectParameters>
            </asp:SqlDataSource>
                                  
            <asp:TextBox ID="txtName" runat="server" style="text-align:left; top: 150px; left: 200px; position: absolute; height: 290px; width: 741px" Rows="10" TextMode="MultiLine"></asp:TextBox>
</div>
</asp:Content>

