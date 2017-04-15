using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class zIndex : System.Web.UI.Page
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
            sc.ConnectionString = @"Server=.\LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "SELECT Person_ID FROM Person WHERE Person_Email = '" + username.Text.ToString() + "'";
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
        
    }

    protected void btnTransporter_Click(object sender, EventArgs e) {
        // CANNOT FIGURE OUT WHAT IS WRONG HERE

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
            sc.ConnectionString = @"Server=.\LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";
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

        // Command line argument must the the SMTP host.
        SmtpClient client = new SmtpClient();
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        client.Timeout = 10000;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("zeeek94@gmail.com", "boss96120");

        MailMessage mm = new MailMessage("zeeek94@gmail.com", "curry.zacha@gmail.com", "test", "test");
        mm.BodyEncoding = UTF8Encoding.UTF8;
        mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

        client.Send(mm);
        
    }

}