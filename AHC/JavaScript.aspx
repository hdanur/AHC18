<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScript.aspx.cs" Inherits="AHC.JavaScript"%>



<html>
<head runat="server">
    <script type="text/javascript" src="ExternalJavaScript.js">
    </script>

</head>
<body>
    <form runat="server">
       Number:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <input type="button" value="Check number" onclick="IsEven()" />
        
        
    </form>
</body>
</html>       
