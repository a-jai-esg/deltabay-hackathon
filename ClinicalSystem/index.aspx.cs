using System;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace ClinicalSystem
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}