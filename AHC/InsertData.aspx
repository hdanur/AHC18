<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertData.aspx.cs" Inherits="AHC.InsertData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID= "GridView2" DataSourceID="SqlDatasource1">
                
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' SelectCommand="SELECT * FROM [SUBSCRIBERS]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
