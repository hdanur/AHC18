using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHC
{
    public partial class Adonet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> returnData = new List<string>();

            SelctingData dataclass = new SelctingData();
           
            SelectDataEmail dataEmail = new SelectDataEmail();
            

            returnData = dataclass.GetSubscriberNameData();
           
            returnData = dataEmail.GetSubscriberData();
            GridView1.DataSource = returnData;
            GridView1.DataSource = returnData;
            
            GridView1.DataBind();
            GridView1.DataBind();
            GridView1.DataBind();
        }

        public class SelctingData
        {

            public List<string> GetSubscriberNameData()
            {
                SqlConnection conn;
                SqlCommand cmd;
                string cmdString = "select S_FName from SUBSCRIBERS";
                conn = new
                    SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");
                cmd = new SqlCommand(cmdString, conn);
                conn.Open();
                SqlDataReader myReader;
                List<string> returnData = new List<string>();
                myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                while (myReader.Read())
                {
                    returnData.Add(myReader["S_FName"].ToString());

                }
                return returnData;

            }
        }

           
        public class SelectDataEmail
        {
            public List<string> GetSubscriberData()
            {
                SqlConnection conn;
                SqlCommand cmd;
                string cmdString = "select S_Email from SUBSCRIBERS";
                conn = new
                    SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");
                cmd = new SqlCommand(cmdString, conn);
                conn.Open();
                SqlDataReader myReader;
                List<string> returnData = new List<string>();
                myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                while (myReader.Read())
                {
                    returnData.Add(myReader["S_Email"].ToString());
                }
                return returnData;

            }
        }


        }
    }

 
    
