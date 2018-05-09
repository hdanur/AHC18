<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="AHC.FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>using form view</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Subscriber_ID" AllowPaging="true" DataSourceID="SqlDataSource1">


                <EditItemTemplate>
                    Subscriber_ID:
                    <asp:Label Text='<%# Eval("Subscriber_ID") %>' runat="server" ID="Subscriber_IDLabel1" /><br />
                    S_FName:
                    <asp:TextBox Text='<%# Bind("S_FName") %>' runat="server" ID="S_FNameTextBox" /><br />
                    S_LName:
                    <asp:TextBox Text='<%# Bind("S_LName") %>' runat="server" ID="S_LNameTextBox" /><br />
                    S_BirthDate:
                    <asp:TextBox Text='<%# Bind("S_BirthDate") %>' runat="server" ID="S_BirthDateTextBox" /><br />
                    S_Address:
                    <asp:TextBox Text='<%# Bind("S_Address") %>' runat="server" ID="S_AddressTextBox" /><br />
                    S_City:
                    <asp:TextBox Text='<%# Bind("S_City") %>' runat="server" ID="S_CityTextBox" /><br />
                    S_State:
                    <asp:TextBox Text='<%# Bind("S_State") %>' runat="server" ID="S_StateTextBox" /><br />
                    S_ZipCode:
                    <asp:TextBox Text='<%# Bind("S_ZipCode") %>' runat="server" ID="S_ZipCodeTextBox" /><br />
                    S_Phone:
                    <asp:TextBox Text='<%# Bind("S_Phone") %>' runat="server" ID="S_PhoneTextBox" /><br />
                    S_Email:
                    <asp:TextBox Text='<%# Bind("S_Email") %>' runat="server" ID="S_EmailTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Subscriber_ID:
                    <asp:TextBox Text='<%# Bind("Subscriber_ID") %>' runat="server" ID="Subscriber_IDTextBox" /><br />
                    S_FName:
                    <asp:TextBox Text='<%# Bind("S_FName") %>' runat="server" ID="S_FNameTextBox" /><br />
                    S_LName:
                    <asp:TextBox Text='<%# Bind("S_LName") %>' runat="server" ID="S_LNameTextBox" /><br />
                    S_BirthDate:
                    <asp:TextBox Text='<%# Bind("S_BirthDate") %>' runat="server" ID="S_BirthDateTextBox" /><br />
                    S_Address:
                    <asp:TextBox Text='<%# Bind("S_Address") %>' runat="server" ID="S_AddressTextBox" /><br />
                    S_City:
                    <asp:TextBox Text='<%# Bind("S_City") %>' runat="server" ID="S_CityTextBox" /><br />
                    S_State:
                    <asp:TextBox Text='<%# Bind("S_State") %>' runat="server" ID="S_StateTextBox" /><br />
                    S_ZipCode:
                    <asp:TextBox Text='<%# Bind("S_ZipCode") %>' runat="server" ID="S_ZipCodeTextBox" /><br />
                    S_Phone:
                    <asp:TextBox Text='<%# Bind("S_Phone") %>' runat="server" ID="S_PhoneTextBox" /><br />
                    S_Email:
                    <asp:TextBox Text='<%# Bind("S_Email") %>' runat="server" ID="S_EmailTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Subscriber_ID:
                    <asp:Label Text='<%# Eval("Subscriber_ID") %>' runat="server" ID="Subscriber_IDLabel" /><br />
                    S_FName:
                    <asp:Label Text='<%# Bind("S_FName") %>' runat="server" ID="S_FNameLabel" /><br />
                    S_LName:
                    <asp:Label Text='<%# Bind("S_LName") %>' runat="server" ID="S_LNameLabel" /><br />
                    S_BirthDate:
                    <asp:Label Text='<%# Bind("S_BirthDate") %>' runat="server" ID="S_BirthDateLabel" /><br />
                    S_Address:
                    <asp:Label Text='<%# Bind("S_Address") %>' runat="server" ID="S_AddressLabel" /><br />
                    S_City:
                    <asp:Label Text='<%# Bind("S_City") %>' runat="server" ID="S_CityLabel" /><br />
                    S_State:
                    <asp:Label Text='<%# Bind("S_State") %>' runat="server" ID="S_StateLabel" /><br />
                    S_ZipCode:
                    <asp:Label Text='<%# Bind("S_ZipCode") %>' runat="server" ID="S_ZipCodeLabel" /><br />
                    S_Phone:
                    <asp:Label Text='<%# Bind("S_Phone") %>' runat="server" ID="S_PhoneLabel" /><br />
                    S_Email:
                    <asp:Label Text='<%# Bind("S_Email") %>' runat="server" ID="S_EmailLabel" /><br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' SelectCommand="SELECT * FROM [SUBSCRIBERS]"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:AmericanHealthConnectionConnectionString %>' SelectCommand="SELECT * FROM [SUBSCRIBERS]"></asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
