using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AHC
{
    public partial class freeQoute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
           if (Page.IsValid)
            {
                Response.Redirect("ThankYouPage.aspx");
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
    
