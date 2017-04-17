using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class outreach : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (IsPostBack) {
            tbfirstName.Text = "";
            tblastName.Text = "";
            password.Text = "";
            check.Text = "";
            tbemail.Text = "";
            phone.Text = "";
            address.Text = "";
            city.Text = "";
            homestate.Value = "";
            zip.Text = "";
            DOBDatePick.Text = "";
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }

    String firstName;
    String lastName;
    String outreachPassword;
    String email;
    String phoneNum;
    String addressProvided;
    String City;
    String State;
    String zipcode;
    String DOB;
    String dayOfWeek;
    String rehabPermitYN;
    String rehabPermitCat;
    String rabiesVacYN;
    String rabiesVacDate;
    String lift40;
    String allergiesLimitsYN;
    String allergiesLimitsTB;
    String outdoorWorkYN;
    String outdoorWorkTB;
    String interest;
    String passionateIssue;
    String publicSpeaking;
    String animalRightsGroup;
    String bringToTeam;



    //rehab permit
    //rabies vacc
    //resume



    protected void Button1_Click(object sender, EventArgs e) {
        String personID = "0";

        string fileNameRehabPermit = "";
        byte[] fileByteRehabPermit = BitConverter.GetBytes(1);
        String filePathRehabPermit = "";
        String fileTypeRehabPermit = "";
        long fileLengthRehabPermit = 0;

        String fileNameRabiesVacc = "";
        byte[] fileByteRabiesVacc = BitConverter.GetBytes(1);
        String filePathRabiesVacc = "";
        String fileTypeRabiesVacc = "";
        long fileLengthRabiesVacc = 0;

        String fileNameResume = "";
        byte[] fileByteResume = BitConverter.GetBytes(1);
        String filePathResume = "";
        String fileTypeResume = "";
        long fileLengthResume = 0;

        try {
            firstName =             tbfirstName.Text.ToString();
            lastName =              tblastName.Text.ToString();
            outreachPassword =      password.Text.ToString();
            email =                 tbemail.Text.ToString();
            phoneNum =              phone.Text.ToString();
            addressProvided =       address.Text.ToString();
            City =                  city.Text.ToString();
            State =                 homestate.Value.ToString();
            zipcode =               zip.Text.ToString();
            DOB =                   DOBDatePick.Text.ToString();
            bool rpIsChecked = RadioButton1.Checked;
            if (rpIsChecked) {
                rehabPermitYN =     RadioButton1.Text.ToString();
                rehabPermitCat =    permitCategory.Value.ToString();
                fileNameRehabPermit = Path.GetFileName(FileUpLoad1.FileName);
                FileUpLoad1.SaveAs(Server.MapPath("~/") + fileNameRehabPermit);
                FileInfo permitRehabFI = new FileInfo(fileNameRehabPermit);
                filePathRehabPermit = Server.MapPath("~/") + fileNameRehabPermit;
                fileTypeRehabPermit = permitRehabFI.Extension;

                using (var stream = new FileStream(filePathRehabPermit, FileMode.Open, FileAccess.Read)) {
                    using (var reader3 = new BinaryReader(stream)) {
                        fileByteRehabPermit = reader3.ReadBytes((int)stream.Length);
                        fileLengthRehabPermit = fileByteRehabPermit.Length;
                    }
                }
                System.IO.File.Delete(Server.MapPath("~/") + fileNameRehabPermit);
            }
            else {
                rehabPermitYN =     RadioButton2.Text.ToString();
                rehabPermitCat = "NULL";
            }
            bool rvIsChecked = RadioButton3.Checked;
            if (rvIsChecked){
                rabiesVacYN =       RadioButton3.Text.ToString();
                rabiesVacDate =     RabiesDatePick.Text.ToString();
                fileNameRabiesVacc = Path.GetFileName(FileUpLoad2.FileName);
                FileUpLoad1.SaveAs(Server.MapPath("~/") + fileNameRabiesVacc);
                FileInfo FIRabiesVacc = new FileInfo(fileNameRabiesVacc);
                filePathRabiesVacc = Server.MapPath("~/") + fileNameRabiesVacc;
                fileTypeRabiesVacc = FIRabiesVacc.Extension;
                using (var stream = new FileStream(filePathRabiesVacc, FileMode.Open, FileAccess.Read)) {
                    using (var reader3 = new BinaryReader(stream)) {
                        fileByteRabiesVacc = reader3.ReadBytes((int)stream.Length);
                        fileLengthRabiesVacc = fileByteRehabPermit.Length;
                    }
                }
                System.IO.File.Delete(Server.MapPath("~/") + fileNameRabiesVacc);
            }
            else {
                rabiesVacYN =       RadioButton4.Text.ToString();
                rabiesVacDate = "NULL";
            }
            bool lift40IsChecked = RadioButton5.Checked;
            if (lift40IsChecked)
                lift40 =            RadioButton5.Text.ToString();
            else
                lift40 =            RadioButton6.Text.ToString();
            bool allergIsChecked = RadioButton7.Checked;
            if (allergIsChecked){
                allergiesLimitsYN = RadioButton7.Text.ToString();
                allergiesLimitsTB = TextBox1.Text.ToString();
            }
            else {
                allergiesLimitsYN = RadioButton7.Text.ToString();
                allergiesLimitsTB = "NULL";
            }
            bool woIsChecked = RadioButton10.Checked;
            if (woIsChecked) {
                outdoorWorkYN = RadioButton10.Text.ToString();
                outdoorWorkTB = TextBox2.Text.ToString();
            }
            else {
                outdoorWorkYN = RadioButton9.Text.ToString();
                outdoorWorkTB = "NULL";
            }
            fileNameResume = Path.GetFileName(FileUpLoad3.FileName);
            FileUpLoad1.SaveAs(Server.MapPath("~/") + fileNameResume);
            FileInfo FIResume = new FileInfo(fileNameResume);
            filePathResume = Server.MapPath("~/") + fileNameResume;
            fileTypeResume = FIResume.Extension;
            using (var stream = new FileStream(filePathResume, FileMode.Open, FileAccess.Read)) {
                using (var reader3 = new BinaryReader(stream)) {
                    fileByteResume = reader3.ReadBytes((int)stream.Length);
                    fileLengthResume = fileByteResume.Length;
                }
            }
            System.IO.File.Delete(Server.MapPath("~/") + fileNameResume);

            



            interest =          TextBox7.Text.ToString();
            passionateIssue =   TextBox3.Text.ToString();
            publicSpeaking =    TextBox4.Text.ToString();
            animalRightsGroup = TextBox5.Text.ToString();
            bringToTeam =       TextBox6.Text.ToString();

            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST;Database=Wildlife;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            
            insert.CommandText =
                "INSERT INTO Person(" +
                "Person_UserName, " +
                "Person_PasswordHash, " +
                "Person_UserType, " +
                "Person_FirstName, " +
                "Person_LastName, " +
                "Person_Email, " +
                "Person_PhonePrimary, " +
                "Person_StreetAddress, " +
                "Person_City, " +
                "Person_State, " +
                "Person_Zipcode, " +
                "Person_DateOfBirth, " +
                "Person_Status, " +
                "Person_RabiesYN, " +
                "Person_RabbiesVaccinationDate, " +
                "Person_RehabilitatePermitCategory, " +
                "Person_AllergiesYN, " +
                "Person_Allergies, " +
                "Person_WorkOutside, " +
                "Person_OutsideLimitations, " +
                "Person_Lift40Lbs, " +
                "Person_RehabilitateYN) VALUES(" +
                    "@email, " +
                    "@outreachPassword, " +
                    "'Applicant', " +
                    "@firstName, " +
                    "@lastName, " +
                    "@email, " +
                    "@phoneNum, " +
                    "@addressProvided, " +
                    "@City, " +
                    "@homeState, " +
                    "@zipcode, " +
                    "@DOB, " +
                    "'Applicant', " +
                    "@rabiesVacYN, " +
                    "@rabiesVacDate, " +
                    "@rehabPermitCat, " +
                    "@allergiesLimitsYN, " +
                    "@allergiesLimitsTB, " +
                    "@outdoorWorkYN, " +
                    "@outdoorWorkTB, " +
                    "@lift40, " +
                    "@rehabPermitYN)";
            
            insert.Parameters.AddWithValue("@email", email);
            insert.Parameters.AddWithValue("@outreachPassword", outreachPassword);
            insert.Parameters.AddWithValue("@firstName", firstName);
            insert.Parameters.AddWithValue("@lastName", lastName);
            insert.Parameters.AddWithValue("@phoneNum", phoneNum);
            insert.Parameters.AddWithValue("@addressProvided", addressProvided);
            insert.Parameters.AddWithValue("@city", City);
            insert.Parameters.AddWithValue("@homeState", State);
            insert.Parameters.AddWithValue("@zipcode", zipcode);
            insert.Parameters.AddWithValue("@DOB", DOB);
            insert.Parameters.AddWithValue("@rabiesVacYN", rabiesVacYN);
            if (rabiesVacDate == "NULL")
                insert.Parameters.AddWithValue("@rabiesVacDate", DBNull.Value);
            else
                insert.Parameters.AddWithValue("@rabiesVacDate", rabiesVacDate);
            if (rehabPermitCat == "NULL")
                insert.Parameters.AddWithValue("@rehabPermitCat", DBNull.Value);
            else
                insert.Parameters.AddWithValue("@rehabPermitCat", rehabPermitCat);
            insert.Parameters.AddWithValue("@allergiesLimitsYN", allergiesLimitsYN);
            if(allergiesLimitsTB == "NULL")
                insert.Parameters.AddWithValue("@allergiesLimitsTB", DBNull.Value);
            else
                insert.Parameters.AddWithValue("@allergiesLimitsTB", allergiesLimitsTB);
            insert.Parameters.AddWithValue("@outdoorWorkYN", outdoorWorkYN);
            if (outdoorWorkTB == "NULL")
                insert.Parameters.AddWithValue("@outdoorWorkTB", DBNull.Value);
            else
                insert.Parameters.AddWithValue("@outdoorWorkTB", outdoorWorkTB);
            insert.Parameters.AddWithValue("@lift40", lift40);
            insert.Parameters.AddWithValue("@rehabPermitYN", rehabPermitYN);

            insert.ExecuteNonQuery();

            insert.CommandText = "SELECT TOP 1 [Person_ID] FROM Person ORDER BY Person_ID DESC";
            insert.ExecuteNonQuery();
            System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();
            if (reader.HasRows) {
                while (reader.Read()) {
                    personID = reader.GetInt32(0).ToString();
                }
                reader.Close();
            }

            insert.CommandText =
                "INSERT INTO OutreachApp(" +
                "OutreachApp_PersonID, " +
                "OutreachApp_WhyInterested, " +
                "OutreachApp_PassionateWildlifeIssue, " +
                "OutreachApp_ExperiencePublicSpeaking, " +
                "OutreachApp_BelongToAnimalRightsGroup, " +
                "OutreachApp_BringToTeam) VALUES(" +
                    "@personID, " +
                    "@interest, " +
                    "@passionateIssue, " +
                    "@publicSpeaking, " +
                    "@animalRightsGroup, " +
                    "@bringToTeam)";

            insert.Parameters.AddWithValue("@personID", personID);
            insert.Parameters.AddWithValue("@interest", interest);
            insert.Parameters.AddWithValue("@passionateIssue", passionateIssue);
            insert.Parameters.AddWithValue("@publicSpeaking", publicSpeaking);
            insert.Parameters.AddWithValue("@animalRightsGroup", animalRightsGroup);
            insert.Parameters.AddWithValue("@bringToTeam", bringToTeam);

            insert.ExecuteNonQuery();

            if (rpIsChecked) {
                insert.CommandText =
                    "INSERT INTO Documentation(" +
                    "Documentation_PersonID, " +
                    "Documentation_TypeOfDocument, " +
                    "Documentation_FileName, " +
                    "Documentation_FileType, " +
                    "Documentation_FileSize, " +
                    "Documentation_FileContent) VALUES(" +
                        "@personID, " +
                        "'RehabPermit', " +
                        "@fileNameRehabPermit, " +
                        "@fileTypeRehabPermit, " +
                        "@fileLengthRehabPermit, " +
                        "@permitBinary)";

                insert.Parameters.AddWithValue("@fileNameRehabPermit", fileNameRehabPermit);
                insert.Parameters.AddWithValue("@fileTypeRehabPermit", fileTypeRehabPermit);
                insert.Parameters.AddWithValue("@fileLengthRehabPermit", fileLengthRehabPermit);
                insert.Parameters.Add("@permitBinary", System.Data.SqlDbType.VarBinary, fileByteRehabPermit.Length).Value = fileByteRehabPermit;

                insert.ExecuteNonQuery();
            }

            if (rvIsChecked) {
                insert.CommandText =
                    "INSERT INTO Documentation(" +
                    "Documentation_PersonID, " +
                    "Documentation_TypeOfDocument, " +
                    "Documentation_FileName, " +
                    "Documentation_FileType, " +
                    "Documentation_FileSize, " +
                    "Documentation_FileContent) VALUES(" +
                        "@personID, " +
                        "'RabiesVacc', " +
                        "@fileNameRabiesVacc, " +
                        "@fileTypeRabiesVacc, " +
                        "@fileLengthRabiesVacc, " +
                        "@binaryRabiesVacc)";

                insert.Parameters.AddWithValue("@fileNameRabiesVacc", fileNameRabiesVacc);
                insert.Parameters.AddWithValue("@fileTypeRabiesVacc", fileTypeRabiesVacc);
                insert.Parameters.AddWithValue("@fileLengthRabiesVacc", fileLengthRabiesVacc);
                insert.Parameters.Add("@binaryRabiesVacc", System.Data.SqlDbType.VarBinary, fileByteRabiesVacc.Length).Value = fileByteRabiesVacc;

                insert.ExecuteNonQuery();
            }

            insert.CommandText =
                    "INSERT INTO Documentation(" +
                    "Documentation_PersonID, " +
                    "Documentation_TypeOfDocument, " +
                    "Documentation_FileName, " +
                    "Documentation_FileType, " +
                    "Documentation_FileSize, " +
                    "Documentation_FileContent) VALUES(" +
                        "@personID, " +
                        "'Resume', " +
                        "@fileNameResume, " +
                        "@fileTypeResume, " +
                        "@fileLengthResume, " +
                        "@binaryResume)";

            insert.Parameters.AddWithValue("@fileNameResume", fileNameResume);
            insert.Parameters.AddWithValue("@fileTypeResume", fileTypeResume);
            insert.Parameters.AddWithValue("@fileLengthResume", fileLengthResume);
            insert.Parameters.Add("@binaryResume", System.Data.SqlDbType.VarBinary, fileByteResume.Length).Value = fileByteResume;

            insert.ExecuteNonQuery();

            sc.Close();
        }
        catch (System.Data.SqlClient.SqlException sqlException) {
        }
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e) {
        visibleRahab.Visible = true;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e) {
        visibleRahab.Visible = false;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e) {
        visibleRabiesDoc.Visible = true;
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e) {
        visibleRabiesDoc.Visible = false;
    }
    protected void RadioButton7_CheckedChanged(object sender, EventArgs e) {
        TextBox1.Visible = true;
    }
    protected void RadioButton8_CheckedChanged(object sender, EventArgs e) {
        TextBox1.Visible = false;
    }
    protected void RadioButton9_CheckedChanged(object sender, EventArgs e) {
        TextBox2.Visible = false;
    }
    protected void RadioButton10_CheckedChanged(object sender, EventArgs e) {
        TextBox2.Visible = true;
    }
}