using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AHC
{
    public partial class InsertData /*: System.Web.UI.Page*/
    {

        public void InsertData1()
        {
            SqlConnection conn;
            SqlCommand cmd;
            string cmdString = @"Insert SUBSCRIBERS (
           Subscriber_ID
           ,S_FName
           ,S_LName
           ,S_BirthDate
           ,S_Address
           ,S_City
           ,S_State
           ,S_ZipCode
           ,S_Phone
           ,S_Email) 
     VALUES ('121', 'hhj', 'lsk', '01/13/2001', '234 cifj rd', 'Richmond', 'VA', '23456', '675-097-9876', 'hhsm@gmail.com')";
            conn = new
            SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");
            cmd = new SqlCommand(cmdString, conn);
            conn.Open();

            cmd.ExecuteNonQuery();
            conn.Close();
        }


        protected void Page_Load(object sender, EventArgs e)
        {


        }
    }
}

    



//List<string> returndata = new List<string>();
//SelectingDataL dataL = new SelectingDataL();

//returndata = dataL.GetSubscriberNameData();
//GridView2.DataSource = returndata;
//GridView2.DataBind();


//public class SelectingDataL
//{
//    public List<string> GetSubscriberNameData()
//    {
//        SqlConnection conn;
//        SqlCommand cmd;
//        string cmdString = "select S_LName from SUBSCRIBERS";
//        conn = new
//                SqlConnection(@"Data Source=DESKTOP-MAMOVL4\HD2017SQL;Initial Catalog=AmericanHealthConnection;Integrated Security=True");

//        cmd = new SqlCommand(cmdString, conn);
//        conn.Open();
//        SqlDataReader myReader;
//        List<string> returnData = new List<string>();
//        myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

//        while (myReader.Read())
//        {
//            returnData.Add(myReader["S_LName"].ToString());
//        }
//        return returnData;
//    }






