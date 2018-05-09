<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Individualand.aspx.cs"  Inherits="AHC.Individualand" MasterPageFile="~/Site1.Master" %>


<asp:Content ContentPlaceHolderID="MainContent"  runat="server">
    <br/> 
    <div style="color: forestgreen; font-size: x-large">
        <p>Please Sign Up for Individual or Family Plan Here!!</p>
    </div>
        <form id="form1" runat="server">
          <div> 
              <table style="color: #000000; font-size: large">
                  <tr>
                      <td>
                          <asp:Label ID="lblFirstName" Text="First Name" runat="server"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbFName" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RfvtxbFName" runat="server" ErrorMessage="First Name is required" ControlToValidate="txbFName" Display="Dynamic"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbLName" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RfvtxbLName" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="txbLName" Display="Dynamic"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbBirthDate" runat="server" ReadOnly="True"></asp:TextBox>
                          
                         </td>
                            <td>
                          <asp:RequiredFieldValidator runat="server" ID="rfvBirthDate"
                              Text="Required" ControlToValidate="txbBirthDate"></asp:RequiredFieldValidator>
                          
                       <asp:RangeValidator runat="server" ID="contVBirthdate" ControlToValidate="txbBirthDate"
                           Text="*Can not use Future date*" Type="Date"></asp:RangeValidator>
                          </td>
                      
                      
                          </tr>
                  <tr>
                      <td>
                          <asp:Calendar runat="server" ID="cldBirthdate" OnSelectionChanged="cldBirthdate_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px"
                              DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399"
                              Height="200px" ShowGridLines="True" Width="220px">
                              <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                              <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                              <OtherMonthDayStyle ForeColor="#CC9966" />
                              <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                              <SelectorStyle BackColor="#FFCC66" />
                              <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                              <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                          </asp:Calendar>

                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbAddress" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RfvtxbAddress" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txbAddress"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                      </td>
                      <td>
                          <asp:DropDownList ID="txbCity" runat="server">
                              <asp:ListItem Selected="True">Please Select City</asp:ListItem>
                              <asp:ListItem>Alexandria</asp:ListItem>
                              <asp:ListItem>Fredericksburg</asp:ListItem>
                              <asp:ListItem>Richmond</asp:ListItem>
                              <asp:ListItem>Arlington</asp:ListItem>
                              <asp:ListItem>Springfield</asp:ListItem>
                              <asp:ListItem>Fairfax</asp:ListItem>
                          </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RfvtxbCity" runat="server" ErrorMessage="Required" ControlToValidate="txbCity" Display="Dynamic" InitialValue="Please Select City"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                      </td>
                      <td>
                          <asp:DropDownList ID="txbState" runat="server">
                              <asp:ListItem Selected="True">Please select state</asp:ListItem>
                              <asp:ListItem>Virginia</asp:ListItem>
                              <asp:ListItem>Maryland</asp:ListItem>
                              <asp:ListItem>DC</asp:ListItem>
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="Rfvtxbstate" runat="server" ErrorMessage="Required" ControlToValidate="txbState" Display="Dynamic" InitialValue="Please select state"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblZipCode" runat="server" Text="Zip Code"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbZipCode" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RfvtxbZipCode" runat="server" ErrorMessage="Required" ControlToValidate="txbZipCode" Display="Dynamic"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblPhoneNumber" Text="Phone Number" runat="server"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbPhoneNo" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ControlToValidate="txbPhoneNo" Display="Dynamic" runat="server" ID="RfvtxbPhoneNo" ErrorMessage="Required" EnableClientScript="true"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator runat="server" ID="RevEmail" ControlToValidate="txbEmail" Text="Your must enter email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Button ID="btnsubmit" runat="server" Text="Submit" PostBackUrl="~/Individualand.aspx" OnClick="btnsubmit_Click" />
                      </td>
                  </tr>

              </table>
              </div>
        </form>
    
       </asp:content>
