using System;
using System.Text;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace ClinicalSystem
{
    public partial class registration : System.Web.UI.Page
    {
        private SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["SomeeConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string build_user_credentials() {

            StringBuilder sb = new StringBuilder();
            sb.Append("('" + FirstName_TextBox.Text + "', '" + LastName_TextBox.Text + "', '" + MiddleName_TextBox.Text + "', '" + Position_DropDownList.SelectedItem.ToString() + "', '" + Status_DropDownList.SelectedItem.ToString() + "', '" + Registration_Username_TextBox.Text + "', '" + Registration_Password_TextBox.Text + "');");

            return sb.ToString();
        }

        private bool check_duplicate(string Login_Username, string Login_Password)
        {
            try {
                SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["SomeeConn"].ConnectionString);
                string sqlQuery = "SELECT EMPUSERNAME, EMPPASSWORD FROM [dbo].EMPLOYEEFILE";
                
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                while(reader.Read())
                {
                    if (reader["EMPUSERNAME"].ToString() == Login_Username || reader["EMPPASSWORD"].ToString() == Login_Password)
                    {
                        return true;
                    }
                }

                sqlConnection.Close();
                return false;
            }
            catch (Exception) {
                return true;
            } 
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            // check if registration is credentials are correct
            if (Registration_Password_TextBox.Text.Equals(Reentered_Registration_Password_TextBox.Text)) {
                
                // check if user exists
                if (check_duplicate(Registration_Username_TextBox.Text, Registration_Password_TextBox.Text) == true) {
                    RegistrationNoticeLabel.Text = "User already exists!";
                }

                // register into the database
                else
                {
                    try { 
                        string sqlQuery = "INSERT INTO [dbo].EMPLOYEEFILE(EMPFNAME, EMPLNAME, EMPMNAME, EMPPOSITION, EMPSTATUS, EMPUSERNAME, EMPPASSWORD) VALUES" + build_user_credentials();

                        sqlConnection.Open();
                
                            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                            sqlCommand.ExecuteNonQuery();
                        
                            RegistrationNoticeLabel.Text = "User Succesfully Registered!";
                    
                        sqlConnection.Close();

                    }catch(Exception ex) {
                        Response.Write(ex.ToString());    
                    }
                } 
            }
            else
            {
                RegistrationNoticeLabel.Text = "Please review entered credentials.";
            }
        }
    }
}