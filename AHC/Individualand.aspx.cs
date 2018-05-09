 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace AHC
{
    public partial class Individualand : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            contVBirthdate.MaximumValue = DateTime.Today.ToShortDateString();
            contVBirthdate.MinimumValue = DateTime.Today.AddDays(-100).ToShortDateString();
            
            
            
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            
        
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");
            SqlCommand command = new SqlCommand("dbo.InsertSubscribers", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@S_FName", SqlDbType.VarChar).Value = txbFName.Text;
            command.Parameters.Add("@S_LName", SqlDbType.VarChar).Value = txbLName.Text;
            command.Parameters.Add("@S_BirthDate", SqlDbType.Date).Value = txbBirthDate.Text;
            command.Parameters.Add("@S_Address", SqlDbType.VarChar).Value = txbAddress.Text;
            command.Parameters.Add("@S_City", SqlDbType.VarChar).Value = txbCity.Text;
            command.Parameters.Add("@S_State", SqlDbType.VarChar).Value = txbState.Text;
            command.Parameters.Add("@S_ZipCode", SqlDbType.VarChar).Value = txbZipCode.Text;
            command.Parameters.Add("@S_Phone", SqlDbType.VarChar).Value = txbPhoneNo.Text;
            command.Parameters.Add("@S_Email", SqlDbType.VarChar).Value = txbEmail.Text;
            command.Parameters.Add("@NewID", SqlDbType.Int).Value = -1;

            connection.Open();
            command.ExecuteNonQuery();

            txbFName.Text = String.Empty;
            txbLName.Text = String.Empty;
            txbBirthDate.Text = String.Empty;
            txbAddress.Text = String.Empty;
            txbCity.Text = String.Empty;
            txbState.Text = String.Empty;
            txbZipCode.Text = String.Empty;
            txbPhoneNo.Text = String.Empty;
            txbEmail.Text = String.Empty;

            if (Page.IsValid)
            {

                Response.Redirect("ThankYouPage.aspx");

            }

        }


        protected void cldBirthdate_SelectionChanged(object sender, EventArgs e)
        {
            txbBirthDate.Text = cldBirthdate.SelectedDate.ToShortDateString();
            
            
        }

    }
}