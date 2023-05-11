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
            /*
            try {

                SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["SomeeConn"].ConnectionString);
                string sqlQuery = "SELECT EMPFNAME, EMPLNAME, EMPPOSITION, EMPUSERNAME, EMPPASSWORD FROM [dbo].EMPLOYEEFILE";

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
    
                sqlConnection.Open();

                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (!reader.HasRows) return;

                while (reader.Read())
                {
                    // if user is found.
                    if (reader["EMPUSERNAME"].ToString() != Login_Username_TextBox.Text || reader["EMPPASSWORD"].ToString() != Login_Password_TextBox.Text) {
                        NoticeLabel.Text = "User is not found!";
                        return;
                    }

                    // check if password is correct
                    if (reader["EMPPASSWORD"].ToString() != Login_Password_TextBox.Text) {
                        NoticeLabel.Text = "Incorrect password.";
                        return;
                    }

                    // For Doctors and nurses 
                    if (reader["EMPPOSITION"].ToString().ToUpper().Equals("DOCTOR") || reader["EMPPOSITION"].ToString().ToUpper().Equals("NURSE"))
                    {
                        Session["User_First_Name"] = reader["EMPFNAME"].ToString();
                        Session["User_Last_Name"] = reader["EMPLNAME"].ToString();
                        Session["User_Position"] = reader["EMPPOSITION"].ToString();
                        Response.Redirect("prescription.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else // For Secretaries
                    {
                        Session["User_First_Name"] = reader["EMPFNAME"].ToString();
                        Session["User_Last_Name"] = reader["EMPLNAME"].ToString();
                        Session["User_Position"] = reader["EMPPOSITION"].ToString();
                        Response.Redirect("billing.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                sqlConnection.Close();
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            */
        }
    }
}