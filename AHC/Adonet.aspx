  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adonet.aspx.cs" Inherits="AHC.Adonet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="true" AllowPaging="true"  PageSize="10" 
             EmptyDataText="No record available."    > 
            <PagerStyle HorizontalAlign="Center" />
            <PagerSettings Position="TopAndBottom"
                FirstPageText="Go to the first page"
             LastPageText="Go to the last page"
                 Mode="NextPreviousFirstLast"></PagerSettings>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' SelectCommand="SELECT * FROM [SUBSCRIBERS]"> </asp:SqlDataSource>
     </div>
    </form>
</body>
</html>
