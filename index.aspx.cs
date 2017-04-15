using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClockIn_Click(object sender, EventArgs e) {
        int personID;
        personID = -1;
        int departmentID = 1;

        try {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "SELECT Person_ID, Person_Email, Person_UserType FROM Person WHERE Person_Email = '" + username.Text.ToString() + "'";
            insert.ExecuteNonQuery();
            System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();
            if (reader.HasRows) {
                while (reader.Read()) {
                    personID = reader.GetInt32(0);
                }
                reader.Close();
                insert.CommandText = "INSERT INTO LogHours(LogHours_PersonID, LogHours_BeginTime) VALUES(" + personID + ", getdate())";
                insert.ExecuteNonQuery();
                Response.Redirect("clockin.aspx");
            }
            sc.Close();
        }
        catch (System.Data.SqlClient.SqlException sqlException) {
            System.Diagnostics.Debug.WriteLine(sqlException);
        }
    }

    protected void btnClockOut_Click(object sender, EventArgs e) {
        int personID;
        personID = -1;
        int loginID;
        loginID = -1;
        try {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            //SQL Statement to gather info
            insert.CommandText = "SELECT Person_ID FROM Person WHERE Person_Email = '" + username.Text.ToString() + "'";
            personID = Convert.ToInt32(insert.ExecuteScalar());
            insert.ExecuteNonQuery();
            System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();
            if (reader.HasRows) {
                while (reader.Read()) {
                    personID = reader.GetInt32(0);
                }
                reader.Close();
                insert.CommandText = "SELECT MAX(LogHours_ID) FROM LogHours WHERE LogHours_PersonID = " + personID;
                loginID = Convert.ToInt32(insert.ExecuteScalar());
                insert.ExecuteNonQuery();
                System.Data.SqlClient.SqlDataReader reader2 = insert.ExecuteReader();
                if (reader2.HasRows) {
                    while (reader2.Read()) {
                        loginID = reader2.GetInt32(0);
                    }
                    reader2.Close();
                    insert.CommandText = "UPDATE LogHours " +
                        "SET LogHours_EndTime = getdate() " +
                        "WHERE LogHours_ID = " + loginID;
                    insert.ExecuteNonQuery();
                    Response.Redirect("clockin.aspx");
                }
            }
            sc.Close();
        }
        catch (System.Data.SqlClient.SqlException sqlException) {
            System.Diagnostics.Debug.WriteLine(sqlException);
        }
    }

    protected void btnTransporter_Click(object sender, EventArgs e) {
        int personID;
        String user;
        int userType;
        int transporterID;
        String date = dateTransporter.Text.ToString();
        DateTime realDate;
        realDate = Convert.ToDateTime(date);
        personID = -1;
        userType = -1;
        transporterID = -1;
        String addressReal = address.Text.ToString();
        String speciesReal = species.Text.ToString();
        String hoursReal = hours.Text.ToString();
        int hoursRealer = Convert.ToInt32(hoursReal);
        String mileageReal = mileage.Text.ToString();
        int mileageRealer = Convert.ToInt32(mileageReal);

        try {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            //SQL Statement to gather hash
            insert.CommandText = "SELECT Person_ID FROM Person WHERE Person_Email = '" + usernameTransporter.Text.ToString() + "'";
            System.Console.WriteLine(usernameTransporter.Text.ToString());
            insert.ExecuteNonQuery();
            System.Diagnostics.Debug.WriteLine(insert.CommandText);
            System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();
            if (reader.HasRows) {
                while (reader.Read()) {
                    personID = reader.GetInt32(0);
                }
                reader.Close();
                insert.CommandText = "SELECT Transporter_ID FROM Transporter WHERE Transporter_PersonID = " + personID;
                insert.ExecuteNonQuery();
                System.Data.SqlClient.SqlDataReader reader2 = insert.ExecuteReader();
                System.Diagnostics.Debug.WriteLine(personID);
                if (reader2.HasRows) {
                    while (reader2.Read()) {
                        transporterID = reader2.GetInt32(0);
                        System.Diagnostics.Debug.WriteLine(transporterID);
                    }
                    reader2.Close();
                    insert.CommandText = 
                        "INSERT INTO LogTransport(" +
                        "LogTransport_TransportID, " +
                        "LogTransport_Date, " +
                        "LogTransport_PickUpAddress, " +
                        "LogTransport_Species, " +
                        "LogTransport_Hours, " +
                        "LogTransport_Miles) VALUES (" +
                        transporterID +
                        ", getdate(), " +
                        "'" + addressReal + "'," +
                        "'" + speciesReal + "', " +
                        hoursRealer + ", " +
                        mileageRealer + ")";
                        insert.ExecuteNonQuery();
                        Response.Redirect("transporter.aspx");
                }
            }
            sc.Close();
        }
        
        catch (System.Data.SqlClient.SqlException sqlException) {
            System.Diagnostics.Debug.WriteLine(sqlException);
        }
    }

    protected void btnEmail_Click(object sender, EventArgs e) {

        String userEmailAddress;
        userEmailAddress = Text3.Text.ToString();
         var client = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new System.Net.NetworkCredential("noreplywlcv484@gmail.com", "owlteam484"),
                EnableSsl = true
            };
            client.Send("noreplywlcv484@gmail.com", userEmailAddress, "test",
                "Click this link: http://localhost:64760/forms.aspx");                      ///CHANGE IF NEEDED
            Console.WriteLine("Sent");
            Response.Redirect("clockin.aspx");
        
        
    }
         

}