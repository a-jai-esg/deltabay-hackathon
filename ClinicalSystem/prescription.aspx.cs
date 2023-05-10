using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ClinicalSystem
{
    public partial class prescription : System.Web.UI.Page
    {
        private SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["SomeeConn"].ConnectionString);
        private DataTable prescriptionTable = new DataTable();
        
        // create the grid for displaying medicine
        private void CreatePrescriptionTable(){
            
            for (int i = 0; i < header_columns.Length; i++) {
                prescriptionTable.Columns.Add(header_columns[i]);
            }

            Session["Prescription_Table"] = prescriptionTable;
            Prescription_DataGrid.DataSource = prescriptionTable;
            Prescription_DataGrid.DataBind();

        }

        // retrieve other data needed for consultation
        private void retrieve_other_consultation_data() {

            int prescriptionNumber = 0, consultationNumber = 0;

            bool prescriptionIsNotEmpty = int.TryParse(Prescription_No_TextBox.Text, out prescriptionNumber),
                consultationIsNotEmpty = int.TryParse(Consultation_No_TextBox.Text, out consultationNumber);

            if(Prescription_No_TextBox.Text != null && prescriptionIsNotEmpty && consultationIsNotEmpty && Date_TextBox.Text != null)
            {
                Session["Prescription_Number"] = prescriptionNumber;
                Session["Consultation_Number"] = consultationNumber;

                Session["Date"] = Date_TextBox.Text.ToString();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Please complete the fields.');</script>");
            }
            
        }


        // runs when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["User_Last_Name"] == null) {
                Response.Redirect("index.aspx", false); 
            }
            else
            {
                SessionNoticeLabel.Text = "Logged in as: " + Session["User_Position"] + " " + Session["User_First_Name"] +" " + Session["User_Last_Name"] + ".";
                Prepared_By_Position_TextBox.Text = Session["User_Position"].ToString();

                string sessionUser = Session["User_First_Name"].ToString() + " " + Session["User_Last_Name"].ToString();
                Session["Preparer"] = sessionUser;
                Prepared_By_Username_TextBox.Text =  sessionUser;
                CreatePrescriptionTable(); 
            }

            if (IsPostBack) { 
                Prescription_DataGrid.DataSource = prescriptionTable;
                Prescription_DataGrid.DataBind();
            }

            Context.ApplicationInstance.CompleteRequest();
        } 


        // checks record with code
        protected void Patient_Code_TextBox_TextChanged(object sender, EventArgs e)
        {
            if (check_patient_records(Patient_Code_TextBox.Text)) {
                
                // get site data
                retrieve_other_consultation_data();

                // transfer session keys to textbox output
                Patient_Code_TextBox.Text = Session["Patient_Code"].ToString();
                Patient_Name_TextBox.Text = Session["Patient_Name"].ToString();
                Patient_Age_TextBox.Text = Session["Patient_Age"].ToString();
            }
            else
            {
                Patient_Name_TextBox.Text = "Patient Not Found.";
                Patient_Code_TextBox.Text = String.Empty;
                Patient_Age_TextBox.Text = String.Empty;
            }
        }

        // retrieve patient codes
        private bool check_patient_records(string Patient_Code) {
           try {
                string sqlQuery = "SELECT PATCODE, PATFNAME, PATLNAME, PATMNAME, PATAGE FROM [dbo].PATIENTFILE WHERE PATCODE = " + Patient_Code;
                
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                while(reader.Read())
                {
                    if (reader["PATCODE"].Equals(int.Parse(Patient_Code)))
                    {
                        // retrieve from database and transfer to session keys
                        Session["Patient_Code"] = reader["PATCODE"].ToString();
                        Session["Patient_Name"] = reader["PATFNAME"].ToString() + " " + reader["PATMNAME"].ToString() + " " + reader["PATLNAME"].ToString();
                        Session["Patient_Age"] = reader["PATAGE"].ToString();
                        
                        Session["Patient_Status"] = "CL";
                        sqlConnection.Close();
                        return true;
                        
                    }
                }
                return false;
            }
            catch (Exception) {
                return false;
            }
        }


        // table- related statts here

        // header colums for gridview
        private string[] header_columns = { "Med Code", "Name", "Dose", "Description", "Quantity", "Remarks" };
        
        // initiates action when medicine code is entered
        protected void Medicine_Code_TextBox_TextChanged(object sender, EventArgs e)
        {
            string[] medicine_info = retrieve_medicine_records(Medicine_Code_TextBox.Text);

            if (medicine_info != null && !Quantity_TextBox.Text.Equals("") && !Consultation_No_TextBox.Equals(""))
            {
                int QTY;
                
                bool tryParse = int.TryParse(Quantity_TextBox.Text, out QTY);
                 
                if (tryParse) {
                    
                    // write to Session
                    Session["QTY"] = QTY;
                    Session["Remarks"] = Remarks_TextBox.Text;
                    Session["Status"] = medicine_info[3]; 
                    
                    //display to table
                    prescriptionTable.Rows.Add(medicine_info[0], medicine_info[1], medicine_info[2], medicine_info[3], Session["QTY"].ToString(), Remarks_TextBox.Text);
                    
                    Prescription_DataGrid.DataSource = prescriptionTable;
                    Prescription_DataGrid.DataBind();
                    Session["Prescription_Table"] = (DataTable)prescriptionTable;
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Please enter a valid value.')</script>");
            }
        } 

        // retrives records when the medicine record is entered
        private string[] retrieve_medicine_records(string Medicine_Code)
        {
            string[] medicine_info = new string[5];

            try
            {
                string sqlQuery = "SELECT * FROM [dbo].MEDICINEFILE WHERE MEDCODE = " + Medicine_Code;

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                while (reader.Read())
                {
                    if (reader["MEDCODE"].Equals(int.Parse(Medicine_Code)))
                    {
                        // retrieve from database and transfer to session keys
                        for (int i = 0; i < medicine_info.Length; i++)
                        {
                            switch (i)
                            {
                                case 0:
                                    medicine_info[i] = reader["MEDCODE"].ToString();
                                    Session["MEDCODE"] = reader["MEDCODE"].ToString();
                                    break;
                                case 1:
                                    medicine_info[i] = reader["MEDNAME"].ToString();
                                    break;
                                case 2:
                                    medicine_info[i] = reader["MEDDOSE"].ToString();
                                    break;
                                case 3:
                                    medicine_info[i] = reader["MEDDESC"].ToString();
                                    break;
                                case 4:
                                    medicine_info[i] = reader["MEDSTATUS"].ToString();
                                    break;
                            }
                        }

                        return medicine_info;
                    }
                }
                sqlConnection.Close();
                return null;
            }
            catch (Exception)
            {
                return null;
            }
        } 
        
        // build prescription detail file entry
        private string build_prescription_detail_file_entries()
        {
            return ("(" + Session["MEDCODE"] + ", " + Session["QTY"] + ", '" + Session["Remarks"] + "', '" + Session["Status"] + "');");
        }

        // build prescription header file entry
        private string build_prescription_header_file_entries()
        {
            return ("(" + Session["Consultation_Number"] + ", '" + Session["Patient_Code"] + "', '" + Session["Date"] + "', '" + Session["Preparer"] + ", '" + Session["Status"] + "');");
        }

        // end table-related

        // when save button is clicked
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //Response.Write(build_prescription_header_file_entries() + "\t" + build_prescription_detail_file_entries());
            int databaseCount = 0;

            while (databaseCount < 2)
            {

                if (databaseCount == 0)
                {
                    try
                    {

                        string sqlQuery1 = "INSERT INTO [dbo].PRESCRIPTIONDETAILFILE(PREDMEDCODE, PREDQTY, PREDREMARKS, PREDSTATUS) VALUES" + build_prescription_detail_file_entries();
                        sqlConnection.Open();

                        SqlCommand sqlCommand = new SqlCommand(sqlQuery1, sqlConnection);
                        sqlCommand.ExecuteNonQuery();

                        sqlConnection.Close();

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }

                }

                else
                {
                    try
                    {

                        string sqlQuery2 = "INSERT INTO PRESCRIPTIONHEADERFILE(PRESHCONSNO, PREHPATCODE, PRESHDATE, PRESHPREPBY, PRESHSTATUS) VALUES + " + build_prescription_header_file_entries();
                        sqlConnection.Open();

                        SqlCommand sqlCommand = new SqlCommand(sqlQuery2, sqlConnection);
                        sqlCommand.ExecuteNonQuery();

                        sqlConnection.Close();

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
                databaseCount++;
            
            }
        }

        // when log out button is clicked, destroy session
        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx", false);

            Context.ApplicationInstance.CompleteRequest();
        }

        // when clear button is clicked
        protected void ClearButton_Click(object sender, EventArgs e)
        {
            Prescription_No_TextBox.Text = String.Empty;
            Consultation_No_TextBox.Text = String.Empty;
            Date_TextBox.Text = String.Empty;

            // Patient Info Fieldset
            Patient_Code_TextBox.Text = String.Empty;
            Patient_Age_TextBox.Text = String.Empty;
            Patient_Name_TextBox.Text = String.Empty;

            // Medicine to prescribe field
            Medicine_Code_TextBox.Text = String.Empty;
            Quantity_TextBox.Text = String.Empty;
            Remarks_TextBox.Text = String.Empty;
        }
    }
}