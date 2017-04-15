using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit(object sender, EventArgs e)
    {





        int personid = -1;

        string firstNameV = firstname.Text.ToString();
        string lastNameV = lastname.Text.ToString();
        string userNameV = email.Text.ToString();
        string passwordHashV = password.Text.ToString();  // GET PASSWORD HASH WORKING
        string userTypeV = "Applicant";
        string emailV = email.Text.ToString();
        string middleInitialV = "J";
        string primaryPhoneV = phone.Text.ToString();
        string secondaryPhoneV = " ";
        string cityV = city.Text.ToString();
        string countyV = " ";
        string stateV = state.Text.ToString();
        string countryV = "United States";
        string zipV = zip.Text.ToString();
        string dob1V = " "; // GET DATE OF BIRTH WORKING. CURRENTLY HAVE GETDATE() in SQL STATEMENT
        string dob2V = " ";

        string streetV = address.Text.ToString();
        string statusV = "Applicant";
        // RABIES VACCINATION NEEDS TO BE PULLED AND DATE ASSIGNED IN SQL STATEMENT

        string allergiesV = allergies.Text.ToString(); ;
        string workOutsideV = " ";
        int totalHoursV = 0;  // AUTOMATICALLY 0 SINCE THEY DID NOT START WORKING YET
        string workOutsideLimitationsV = " "; // NOT ON THE FORM?
        string lift40V = " "; // THESE FIELDS ARE NOT ON THE FORM
        int permitRehabV = 0;

        string previousTrainingV = medical.Text.ToString();
        string workEnvironmentV = workEnvironment.Text.ToString();
        string euthanasiaV = euthanize.Text.ToString();
        string dirtyV = dirty.Text.ToString();

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        insert.CommandText = "INSERT INTO Person (Person_UserName, Person_PasswordHash, Person_UserType, Person_FirstName, Person_MiddleName, Person_LastName, Person_Email, Person_PhonePrimary, Person_PhoneAlternate, Person_StreetAddress, Person_City, Person_County, Person_State, Person_Country, Person_ZipCode, Person_DateOfBirth, Person_Status, Person_RabbiesVaccinationDate, Person_RehabilitatePermitCategory, Person_Allergies, " +
          "Person_WorkOutside, Person_OutsideLimitations, Person_Lift40Lbs, Person_TotalVolunteeredHours, Person_LastVolunteered)" +
              " VALUES ('" + userNameV + "', '" + passwordHashV + "', '" + userTypeV + "', '" + firstNameV + "', '" + middleInitialV + "', '" + lastNameV + "', '" + emailV + "', '" + primaryPhoneV + "', '" + secondaryPhoneV + "', '" + streetV + "', '" + cityV + "', '" + countyV + "', '" + stateV + "', '" + countryV + "', '" + zipV + "', getdate(), " + " '" + statusV + "', getdate(), '" + permitRehabV + "', '" + allergiesV + "', '" +
              workOutsideV + "', '" + workOutsideLimitationsV + "', '" + lift40V + "', " + totalHoursV + ", getdate())";

        insert.ExecuteNonQuery();



        insert.CommandText = "SELECT MAX(Person_ID) FROM Person";
        insert.ExecuteNonQuery();

        System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();

        if (reader.HasRows)
        {

            while (reader.Read())
            {

                personid = reader.GetInt32(0);



            }

            reader.Close();



            // vet specific



            insert.CommandText = "INSERT INTO vetteamapp (VetTeamApp_PersonID, "
                                                        + " VetTeamApp_PreviousTraining, "
                                                        + "VetTeamApp_WorkEnvironment, "
                                                        + "VetTeamApp_Euthansia, "
                                                        + "VetTeamApp_Messy) "
                                                        + "VALUES (" + personid + ", "
                                                        + "'" + previousTrainingV + "', "
                                                        + "'" + workEnvironmentV + "', "
                                                        + "'" + euthanasiaV + "', "
                                                        + "'" + dirtyV + "')";

            insert.ExecuteNonQuery();

            /*		//Document Query
                if($_FILES['permitRehabVA']['size'] > 0){
                    $fileName  = $_FILES['permitRehabVA']['name'];
                    $tmpName  = $_FILES['permitRehabVA']['tmp_name'];
                    $fileType = $_FILES['permitRehabVA']['type'];
                    $fileSize = $_FILES['permitRehabVA']['size'];
                    $fp      = fopen($tmpName, 'r');
                    $permitRehabVA = fread($fp, filesize($tmpName));
                    $permitRehabVA = addslashes($permitRehabVA);
                    fclose($fp);



                    $documentQuery = "INSERT INTO documentation (Documentation_PersonID, Documentation_TypeOfDocument, Documentation_FileName, Documentation_FileType, Documentation_FileSize, Documentation_FileContent, Documentation_DocumentNotes) 
                        VALUES ('$personID', 'Rehabilitation_Permit', '$fileName', '$fileType', '$fileSize', '$permitRehabVA', NULL)";
			

                    if(!mysqli_query($conn,$documentQuery))

                    {
                        echo("Error description: " . mysqli_error($conn));
                        $insertsPassed = "false";
                    }
                }
                if($_FILES['rabbiesDocumentation']['size'] > 0){
                    $fileName  = $_FILES['rabbiesDocumentation']['name'];
                    $tmpName  = $_FILES['rabbiesDocumentation']['tmp_name'];
                    $fileType = $_FILES['rabbiesDocumentation']['type'];
                    $fileSize = $_FILES['rabbiesDocumentation']['size'];
                    $fp      = fopen($tmpName, 'r');
                    $rabbiesDocumentation = fread($fp, filesize($tmpName));
                    $rabbiesDocumentation = addslashes($rabbiesDocumentation);
                    fclose($fp);



                    $documentQuery = "INSERT INTO documentation (Documentation_PersonID, Documentation_TypeOfDocument, Documentation_FileName, Documentation_FileType, Documentation_FileSize, Documentation_FileContent, Documentation_DocumentNotes) 
                        VALUES ('$personID', 'Rabbies_Documentation', '$fileName', '$fileType', '$fileSize', '$rabbiesDocumentation', NULL)";
			

                    if(!mysqli_query($conn,$documentQuery))

                    {
                        echo("Error description: " . mysqli_error($conn));
                        $insertsPassed = "false";
                    }
            
                }
                if($_FILES['userFile']['size'] > 0){		
                    //Document Query
                    $fileName  = $_FILES['userFile']['name'];
                    $tmpName  = $_FILES['userFile']['tmp_name'];
                    $fileType = $_FILES['userFile']['type'];
                    $fileSize = $_FILES['userFile']['size'];
                    $fp      = fopen($tmpName, 'r');
                    $userfile = fread($fp, filesize($tmpName));
                    $userfile = addslashes($userfile);
                    fclose($fp);



                    $documentQuery = "INSERT INTO documentation (Documentation_PersonID, Documentation_TypeOfDocument, Documentation_FileName, Documentation_FileType, Documentation_FileSize, Documentation_FileContent, Documentation_DocumentNotes) 
                        VALUES ('$personID', 'Resume', '$fileName', '$fileType', '$fileSize', '$userfile', NULL)";
			

                    if(!mysqli_query($conn,$documentQuery))

                    {
                        echo("Error description: " . mysqli_error($conn));
                        $insertsPassed = "false";
                    }
                }
            }
            if($insertsPassed == "true"){
                    $conn->close();
                    header("Location: confirmation.php");
                    exit();
                    }
            else{
                $message = 'Password values do not match. Please try again.';

        echo "<SCRIPT>
        alert('$message');
        </SCRIPT>";
            }

        }
        ?>

                     */
        }
    }

    protected void btnReset(object sender, EventArgs e)
    {






    }

}