using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TransporterApp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit(object sender, EventArgs e)
    {
        /*
            int personid;
        
            string firstNameT = firstName.Text.ToString();
			string lastNameT = lastName.Text.ToString();
			string userNameT = email.Text.ToString();
			string passwordHashT = $passwordHashPassed;
			string userTypeT = "Applicant";
			string emailT = email.Text.ToString();
			string middleInitialT = "J";
			int primaryPhoneT = Convert.ToInt32(phone.Text.ToString());
			int secondaryPhoneT = 0;
			string cityT = city.Text.ToString();
			string countyT = null;
			string stateT = null;
			string zipT = null;
			string dob1T = null;
			string dob2T = null;
			
			string streetT = null;
			string statusT = "Applicant";
			/* $rabiesVac1 = $_POST['VACYear'] . '-' . $_POST['VACMonth'] . '-' . $_POST['VACDay'];
			$rabiesVac2 = DateTime::createFromFormat('Y-m-d' , $rabiesVac1);
			$rabiesVac = $rabiesVac2->format('Y-m-d'); 
			string lastVolunteeredT = null;
			string allergiesT = null;
			string workOutsideT = null;
			string totalHoursT = null;
			string workOutsideLimitationsT = null;
			string lift40T = null;
			int permitRehabT = 0;
			string travelT = null;
			string captureT = null;;
			string acknowledgeT = null;;
			if (permitRehabT < 1)
			{
				permitRehabT = null;
			}

         System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;




insert.CommandText = "INSERT INTO Person (Person_UserName, Person_PasswordHash, Person_UserType, Person_FirstName, Person_MiddleName, Person_LastName, Person_Email, Person_PhonePrimary, Person_PhoneAlternate, Person_StreetAddress, Person_City, Person_County, Person_State, Person_Country, Person_ZipCode, Person_DateOfBirth, Person_Status, Person_RabbiesVaccinationDate, Person_RehabilitatePermitCategory, Person_Allergies, " +
		  "Person_WorkOutside, Person_OutsideLimitations, Person_Lift40Lbs, Person_TotalVolunteeredHours, Person_LastVolunteered)" +
			  " VALUES ('" + userNameT + "', '" + passwordHashT + "', '" + userTypeT + "', '" + firstNameT + "', '" + middleInitialT + "', '" + lastNameT + "', '" + emailT + "', '" + primaryPhoneT + "', '" + 0 + "', '" + streetT + "', '" + cityT + "', '" + stateT + "', '" + zipT + "', '" + dob2T + "', '" + statusT + "', '" + "f', 'f', 'f', " + 0 + ", 'f', 'f', 'f', 'f', 'f', 'f')";

        insert.ExecuteNonQuery();

		
			
			int depNum = 4;
			insert.CommandText = "SELECT MAX(Person_ID) FROM Person";
			
             System.Data.SqlClient.SqlDataReader reader = insert.ExecuteReader();
        

        

        if(reader.HasRows)
        {

            while (reader.Read())
            {

                personid = reader.GetInt32(0);



            }

            reader.Close();
        
        
        
			
			
			insert.CommandText = "INSERT INTO Transporterapp (TransporterApp_PersonID, TransporterApp_DistanceWillingToTravel, TransporterApp_CaptureAnimals, TransporterApp_Acknowledgement)" +
			  " VALUES (" + personid + ", '" + travelT + "', '" + captureT + "', '" + acknowledgeT + "')";



			if($_FILES['rabbiesDocumentation']['size'] > 0){	
				$fileName = $_FILES['rabbiesDocumentation']['name'];
				$tmpName  = $_FILES['rabbiesDocumentation']['tmp_name'];
				$fileSize = $_FILES['rabbiesDocumentation']['size'];
				$fileType = $_FILES['rabbiesDocumentation']['type'];
				$fp      = fopen($tmpName, 'r');
				$content = fread($fp, filesize($tmpName));
				$content = addslashes($content);
				fclose($fp); 
				
				$documentQuery = "INSERT INTO Documentation (Documentation_PersonID, Documentation_TypeOfDocument, Documentation_FileName, Documentation_FileType, Documentation_FileSize, Documentation_FileContent, Documentation_DocumentNotes)
				  VALUES ('$personID', 'Rabbies_Documentation', '$fileName', '$fileType', '$fileSize', '$content', NULL)";



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


    
    }

*/
    }
}