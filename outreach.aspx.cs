using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class outreach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void btnSubmit(object sender, EventArgs e)
    {

        /****************************************
			START PASWWORD CODE 
		****************************************/
    
	/*	require("PasswordHash.php");
		$hasher = new PasswordHash(8, false);
		// Retrieve password
		$password = $_POST["password"];
		// Limit passwords to 72 characters to help prevent DoS attacks
		if (strlen($password) > 72) { die("Password must be 72 characters or less"); }
		// The $hash variable will contain the hash of the password
		$hash = $hasher->HashPassword($password);
		if (strlen($hash) >= 20) {
			$passwordHashPassed = $hash;
				
		} else {
			
		 // something went wrong

		}
        */
		/****************************************
			END PASWWORD CODE 
		****************************************/



         System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;



        string firstNameO = firstName.Text.ToString();
        string lastNameO = lastName.Text.ToString();
        string userNameO = email.Text.ToString();
		string userTypeO = "Applicant";
	//	$passwordHashO = $passwordHashPassed;
        string passwordHashO = "";
        string emailO = email.Text.ToString();
        string middleInitialO = "J";
        int primaryPhoneO = Convert.ToInt32(phone.Text);
        int secondaryPhoneO = 0;
        string cityO = city.Text.ToString();
        string countyO = "Test";
        string countryO = "United States";
        string stateO = "Virginia";
        string zipO = zip.Text.ToString();
        string dob1O = "12/22/2012";
	/*	DateTime dob2O = DateTime::createFromFormat('Y-m-d' , $dob1);
		DateTime dobO = $dob2->format('Y-m-d');
       // $rabiesVac1 = $_POST['VacYear'] . '-' . $_POST['VacMonth'] . '-' . $_POST['VacDay'];
       // $rabiesVac2 = DateTime::createFromFormat('Y-m-d' , $rabiesVac1);
       // $rabiesVac = $rabiesVac2->format('Y-m-d');
        */
      
    String streetO = address.Text;
      
		
		String statusO = "Applicant";
		string permitrehabCategoryO = "";
		string lastVolunteeredO = "";
		string allergiesO = "";
		string workOutsideO = "";
		int  totalHoursO = 0;
		string workOutsideLimitationsO = "";
		string lift40O = "";

		string whyInterestedO = "";
		string wildlifeIssueO = "";
		string priorExperienceO = "";
		string animalRightsGroupO = "";
		string valueAddedO = "";
        int personID = -1;




        insert.CommandText = "INSERT INTO Person (Person_UserName, Person_PasswordHash,Person_UserType, Person_FirstName, Person_MiddleName, Person_LastName, Person_Email, Person_PhonePrimary, Person_PhoneAlternate, Person_StreetAddress, Person_City, Person_County, " +
			 "Person_State, Person_Country, Person_Zipcode, Person_DateOfBirth, Person_Status, Person_RabbiesVaccinationDate, Person_RehabilitatePermitCategory, Person_Allergies, " +
			"Person_WorkOutside, Person_OutsideLimitations, Person_Lift40Lbs, Person_TotalVolunteeredHours, Person_LastVolunteered) " +
					"VALUES ('" + userNameO + "', '" + passwordHashO + "', '" + userTypeO + "', '" + firstNameO + middleInitialO + "', '" + lastNameO + "', '" + emailO + "', " + primaryPhoneO + ", " + secondaryPhoneO + ", '" + streetO +  "', '" + cityO +  "', '" + countyO +  "', '" + stateO +  "', '" +  countryO +  "', '" +
                    zipO +  "', '" + dob1O +  "', '" + statusO +  "', '" + " " +  "', '" + permitrehabCategoryO +  "', '" +  allergiesO +  "', '" + workOutsideO +  "', '" + workOutsideLimitationsO +  "', '" + lift40O +  "', " + totalHoursO +  ", '" + lastVolunteeredO + ")";

        insert.ExecuteNonQuery();


        System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();

        insert.CommandText = "SELECT MAX(Person_ID) FROM Person";
			
        if(reader.HasRows)
        {

            while (reader.Read())
            {

                personID = reader.GetInt32(0);



            }

            reader.Close();
        


  
			
			
			
			
			// outReach specific
			
			
			
			
		insert.CommandText = "INSERT INTO outreachApp (	OutreachApp_PersonID, OutreachApp_WhyInterested, OutreachApp_PassionateWildlifeIssue, OutreachApp_ExperiencePublicSpeaking, OutreachApp_BelongToAnimalRightsGroup, OutreachApp_BringToTeam) " +
							   " VALUES (" + personID + ", '" + whyInterestedO + "', '" + wildlifeIssueO + "', '" + priorExperienceO + "', '" + animalRightsGroupO + "', '" + valueAddedO + "')";
													
												



    }



  /*

    //Document Query
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
            VALUES ('$personID', 'Rabies_Documentation', '$fileName', '$fileType', '$fileSize', '$rabbiesDocumentation', NULL)";
        

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

   */
	}
	
}

