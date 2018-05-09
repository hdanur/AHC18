<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="freeQoute.aspx.cs" Inherits="AHC.freeQoute" MasterPageFile="~/Site1.Master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>--%>

<asp:Content ContentPlaceHolderID="MainContent" runat="server" ID="contentFreeQoute">
    <form id="form1" runat="server">
        <script>
            function zipcoderequirement() {
                var zipcode = document.getElementById("txtzipCode").value;
                if (zipcode == "") {
                    alert("Please enter zipcode");
                }
                
                }

            }
        </script>
        <br />
        <div>
            <p style="color: #339933; font-style: italic; font-size: medium">
        Let&#39;s Save You Money!</p>
            <p style="font-size: medium">
        Over 200+ Insurance Companies and Financial Subsidies available.</p>
             <p style="color: #339933; font-size: medium">
        Insurance Applicant(s)</p>
    <p style="font-size: medium">
        Enter ages of all individuals for which you wish to purchase insurance.</p>
            <table>
                <tr>
                    <td> 
                        <asp:Label ID="lblzipCode" runat="server" Text="Zip Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtzipCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblage" runat="server" Text="Age(primary)"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltobacoUsed" runat="server" Text="Used Tobacco in the Last 6 Months?"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem Value=" " Text="Select"></asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                           
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPregnant" runat="server" Text="Are you Pregnant?"></asp:Label>
                    </td>

                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value=" " Text="Select"></asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSpouseOrDependent" runat="server" Text="Age of Spouse or Dependent (Optional)"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtSpouseOrDependent" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSpouseOrDependentTobacco" runat="server" Text="Spouse or Dependent use tobaco int he last 6 month?"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value=" " Text="Select"></asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <input ID="btnSubmit" type="button" value="Submit" OnClick="zipcoderequirement()" />
                    </td>
                </tr>

               
            </table>
        </div>
    </form>
    </asp:Content>
<%--</body>
</html>--%>
