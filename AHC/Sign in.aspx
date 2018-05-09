<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sign in.aspx.cs" Inherits="AHC.Sign_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <br />
        <br />
        <table style="background-color:cornsilk; border:groove; border-color:antiquewhite">
           

        <asp:Label ID="signup" runat="server" Text="Sign Up for Your New Account" Width="487px" BackColor="#990000" Font-Bold="True" ForeColor="White" TabIndex="20" BorderColor="Gray"></asp:Label>
        
            <tr>
                <td>
                 <asp:Label runat="server" ID="usernamelbl" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="usernameval" ErrorMessage="Required" ControlToValidate="username"  runat="server"></asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td style="height: 29px">
                 <asp:Label ID="firstnamelbl" runat="server" Text="First Name"></asp:Label>
                </td>
                <td style="height: 29px">
<asp:textbox runat="server" ID="firstname"></asp:textbox>
                </td>
                <td style="height: 29px">
<asp:RequiredFieldValidator ID="firstnameval" ErrorMessage="Required" ControlToValidate="firstname" runat="server"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <a href="Sign%20in.aspx">Sign in.aspx</a>
            <tr>
                <td>
                 <asp:Label ID="lastnamelbl" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
<asp:TextBox runat="server" ID="lastname" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="lastnameval" ErrorMessage="Required" ControlToValidate="lastname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                 <asp:Label Text="Password" runat="server" ID="passwordlbl"></asp:Label>
                </td>
                <td>
<asp:TextBox runat="server" id="password"  TextMode="Password" OnTextChanged="password_TextChanged">

</asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="password" ID="passwordval"></asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                 <asp:Label Text="Confirm Password" runat="server" ID="confirmpasswordlbl"></asp:Label>
                </td>
                <td>
<asp:textbox runat="server" ID="confirmpassword" TextMode="Password"></asp:textbox>
                </td>
                <td>
<asp:RequiredFieldValidator runat="server" ControlToValidate="confirmpassword"  ErrorMessage="Password do not match" ValidationGroup="password"  ID="confirmpasswordval"></asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                 <asp:Label ID="emaillbl" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td>   
                    <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator runat="server" ID="emailval" ControlToValidate="email" Text="Your must enter email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit1" Text="Submit" runat="server" OnClick="submit1_Click" />
                </td>  
            </tr>
        </table>
        
    </form>
</asp:Content>
