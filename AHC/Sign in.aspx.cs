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
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {

        }
        
protected void submit1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("dbo.spRegistration", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@U_Name", SqlDbType.VarChar).Value = username.Text;
            cmd.Parameters.Add("@FName", SqlDbType.VarChar).Value = firstname.Text;
            cmd.Parameters.Add("@LName", SqlDbType.VarChar).Value = lastname.Text;
            cmd.Parameters.Add("@U_Password", SqlDbType.VarChar).Value = password.TextMode;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.TextMode;
            cmd.Parameters.Add("@NewID", SqlDbType.Int).Value = -1;

            SqlParameter paramNewID = new SqlParameter()
            {
                Direction = ParameterDirection.Output
            };

            conn.Open();
            cmd.ExecuteNonQuery();
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}