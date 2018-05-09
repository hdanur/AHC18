<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="AHC.GridView"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using the GridView Control</title>
</head>
<body>
    <form id="form1" runat="server">
  
        <div>
            SELECT SUBSCRIBER<br />
&nbsp;<br />
         Select State <asp:DropDownList runat="server" ID="StateDropDownList" DataSourceID="StateSqlDatasorce" DataTextField="S_State"
             DataValueField="S_State" AutoPostBack="True" AppendDataBoundItems="True">
             <asp:ListItem Value="" Text="Select a State"/>
                      </asp:DropDownList>
          
            <br />
            <br />
          
            <asp:SqlDataSource runat="server" ID="StateSqlDatasorce" 
                ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>'
                SelectCommand="SELECT [S_State] FROM [SUBSCRIBERS]">
            </asp:SqlDataSource>

            <asp:GridView runat="server" ID="GridView1" CellPadding="4" ForeColor="#333333" GridLines="None" 
                AutoGenerateColumns="False" DataKeyNames="Subscriber_ID" DataSourceID="GVsqldatasource" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="Subscriber_ID" HeaderText="Subscriber_ID" ReadOnly="True" SortExpression="Subscriber_ID"></asp:BoundField>
                    <asp:BoundField DataField="S_FName" HeaderText="S_FName" SortExpression="S_FName"></asp:BoundField>
                    <asp:BoundField DataField="S_LName" HeaderText="S_LName" SortExpression="S_LName"></asp:BoundField>
                    <asp:BoundField DataField="S_BirthDate" DataFormatString="{0:d}" HeaderText="S_BirthDate" SortExpression="S_BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="S_Address" HeaderText="S_Address" SortExpression="S_Address"></asp:BoundField>
                    <asp:BoundField DataField="S_City" HeaderText="S_City" SortExpression="S_City"></asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="GVsqldatasource" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' SelectCommand="SELECT [Subscriber_ID], [S_FName], [S_LName], [S_BirthDate], [S_Address], [S_City] FROM [SUBSCRIBERS] WHERE ([S_State] = @S_State)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="StateDropDownList" PropertyName="SelectedValue" DefaultValue="Null" Name="S_State" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />

            <asp:DetailsView runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False" DataKeyNames="Subscriber_ID" DataSourceID="DvSqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>

                <Fields>
                    <asp:BoundField DataField="Subscriber_ID" HeaderText="Subscriber_ID" ReadOnly="True" SortExpression="Subscriber_ID"></asp:BoundField>
                    <asp:BoundField DataField="S_FName" HeaderText="S_FName" SortExpression="S_FName"></asp:BoundField>
                    <asp:BoundField DataField="S_LName" HeaderText="S_LName" SortExpression="S_LName"></asp:BoundField>
                    <asp:BoundField DataField="S_BirthDate" HeaderText="S_BirthDate" SortExpression="S_BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="S_Address" HeaderText="S_Address" SortExpression="S_Address"></asp:BoundField>
                    <asp:BoundField DataField="S_City" HeaderText="S_City" SortExpression="S_City"></asp:BoundField>
                    <asp:BoundField DataField="S_State" HeaderText="S_State" SortExpression="S_State"></asp:BoundField>
                    <asp:BoundField DataField="S_ZipCode" HeaderText="S_ZipCode" SortExpression="S_ZipCode"></asp:BoundField>
                    <asp:BoundField DataField="S_Phone" HeaderText="S_Phone" SortExpression="S_Phone"></asp:BoundField>
                    <asp:BoundField DataField="S_Email" HeaderText="S_Email" SortExpression="S_Email"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>

            </asp:DetailsView>

            <asp:SqlDataSource runat="server" ID="DvSqlDataSource1" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' DeleteCommand="DELETE FROM [SUBSCRIBERS] WHERE [Subscriber_ID] = @Subscriber_ID" InsertCommand="INSERT INTO [SUBSCRIBERS] ([Subscriber_ID], [S_FName], [S_LName], [S_BirthDate], [S_Address], [S_City], [S_State], [S_ZipCode], [S_Phone], [S_Email]) VALUES (@Subscriber_ID, @S_FName, @S_LName, @S_BirthDate, @S_Address, @S_City, @S_State, @S_ZipCode, @S_Phone, @S_Email)" SelectCommand="SELECT * FROM [SUBSCRIBERS] WHERE ([Subscriber_ID] = @Subscriber_ID)" UpdateCommand="UPDATE [SUBSCRIBERS] SET [S_FName] = @S_FName, [S_LName] = @S_LName, [S_BirthDate] = @S_BirthDate, [S_Address] = @S_Address, [S_City] = @S_City, [S_State] = @S_State, [S_ZipCode] = @S_ZipCode, [S_Phone] = @S_Phone, [S_Email] = @S_Email WHERE [Subscriber_ID] = @Subscriber_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Subscriber_ID" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Subscriber_ID" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="S_FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_LName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="S_BirthDate"></asp:Parameter>
                    <asp:Parameter Name="S_Address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_State" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_ZipCode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_Phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_Email" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Subscriber_ID" Type="Decimal"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="S_FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_LName" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="S_BirthDate"></asp:Parameter>
                    <asp:Parameter Name="S_Address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_City" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_State" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_ZipCode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_Phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="S_Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Subscriber_ID" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
       <div>
       </div>
           
           </form>
   
</body>
</html>
