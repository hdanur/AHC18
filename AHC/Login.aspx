<%@ Page Title="Creating Users" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AHC.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <form id="form1" runat="server">
    <asp:Login HelpPageText="Help" HelpPageUrl="~/Help.aspx" PasswordRecoveryUrl="~/ForgotPassword.aspx" PasswordRecoveryText="Forgot Password" CreateUserUrl="~/Sign in.aspx" CreateUserText="Create New User"  ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
     
    </asp:Login>
        <p>
            
        </p>
        
        </form>
</asp:Content>
