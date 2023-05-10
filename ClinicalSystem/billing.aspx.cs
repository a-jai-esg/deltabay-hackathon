using System;
using System.Data;

namespace ClinicalSystem
{
    public partial class billing : System.Web.UI.Page
    {
        private DataTable table = new DataTable();

        private void PopulateColumn()
        {
            string[] header_column = {"Count", "Description", "Amount"};

            for(int i = 0; i < header_column.Length; i++)
            {
                table.Columns.Add(header_column[i]);
            }

            Vaccine_DataGrid.DataSource = table;
            Vaccine_DataGrid.DataBind();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Last_Name"] == null) {
                Response.Redirect("index.aspx", false); 
            }
            else
            {
                SessionNoticeLabel.Text = "Logged in as: " + Session["User_Position"] + " " + Session["User_First_Name"] +" " + Session["User_Last_Name"] + ".";
                Prepared_By_Position_TextBox.Text = Session["User_Position"].ToString();
                Prepared_By_Username_TextBox.Text = Session["User_First_Name"].ToString() + " " + Session["User_Last_Name"].ToString() ;
                PopulateColumn();

                // checked by default
                ConsultationCheckBox.Checked = true;
                Date_TextBox.Text = DateTime.Now.ToString("dd.MM.yyyy");
            }
            
            Context.ApplicationInstance.CompleteRequest();
        }


        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx", false);

            Context.ApplicationInstance.CompleteRequest();
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            // Billing No and Date TextBoxes
            Billing_No_TextBox.Text = String.Empty;
            Date_TextBox.Text = String.Empty;

            // Patient Info Fieldset
            Patient_Code_TextBox.Text = String.Empty;
            Patient_Age_TextBox.Text = String.Empty;
            Patient_Name_TextBox.Text = String.Empty;

            //Service Type
            ConsultationCheckBox.Checked = true;
            ImmunizationCheckBox.Checked = false;

            //Immunization Field
            ImmunizationNo_TextBox.Text = String.Empty;
        }
    }
}