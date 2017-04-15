using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class animal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit(object sender, EventArgs e)
    {

        int personid = -1;

        string firstNameA = firstName.Text.ToString();
        string lastNameA = lastName.Text.ToString();
        string userNameA = email.Text.ToString();
        string passwordHashA = password.Text.ToString();  // GET PASSWORD HASH WORKING
        string userTypeA = "Applicant";
        string emailA = email.Text.ToString();
        string middleInitialA = "J";
        string primaryPhoneA = phone.Text.ToString();
        string secondaryPhoneA = " ";
        string cityA = city.Text.ToString();
        string countyA = " ";
        string stateA = state.SelectedValue.ToString();
        string countryA = "United States";
        string zipA = zip.Text.ToString();
        string dob1A = " "; // GET DATE OF BIRTH WORKING. CURRENTLY HAVE GETDATE() in SQL STATEMENT
        string dob2A = " ";

        string streetA = address.Text.ToString();
        string statusA = "Applicant";
        // RABIES VACCINATION NEEDS TO BE PULLED AND DATE ASSIGNED IN SQL STATEMENT

        string lastVolunteeredA = " "; // GET THIS WORKING. CURRENTLY HAVE GETDATE() in SQL STATEMENT
        string allergiesA = allergiesWriteUp.Text.ToString();

        string workOutsideA = " ";
        int totalHoursA = 0;  // AUTOMATICALLY 0 SINCE THEY DID NOT START WORKING YET
        string workOutsideLimitationsA = limitationsWriteUp.Text.ToString(); // NOT ON THE FORM?
        string lift40A = pounds.Text.ToString(); // THESE FIELDS ARE NOT ON THE FORM
        int permitRehabA = 0;
        string travelA = availability.SelectedValue.ToString();
        string experienceA = experience.Text.ToString();
        string deadAnimalsA = deadAnimals.Text.ToString();
        string livePreyA = livePrey.Text.ToString();
        string groupsA = groups.Text.ToString();
        string accomplishA = accomplish.Text.ToString();
        string issueA = issue.Text.ToString();
        string additionalInfoA = additionalInfo.Text.ToString();


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST; Database=Wildlife;Trusted_Connection=Yes;";

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;




        insert.CommandText = "INSERT INTO Person (Person_UserName, Person_PasswordHash, Person_UserType, Person_FirstName, Person_MiddleName, Person_LastName, Person_Email, Person_PhonePrimary, Person_PhoneAlternate, Person_StreetAddress, Person_City, Person_County, Person_State, Person_Country, Person_ZipCode, Person_DateOfBirth, Person_Status, Person_RabbiesVaccinationDate, Person_RehabilitatePermitCategory, Person_Allergies, " +
                  "Person_WorkOutside, Person_OutsideLimitations, Person_Lift40Lbs, Person_TotalVolunteeredHours, Person_LastVolunteered)" +
                      " VALUES ('" + userNameA + "', '" + passwordHashA + "', '" + userTypeA + "', '" + firstNameA + "', '" + middleInitialA + "', '" + lastNameA + "', '" + emailA + "', '" + primaryPhoneA + "', '" + secondaryPhoneA + "', '" + streetA + "', '" + cityA + "', '" + countyA + "', '" + stateA + "', '" + countryA + "', '" + zipA + "', getdate(), " + " '" + statusA + "', getdate(), '" + permitRehabA + "', '" + allergiesA + "', '" +
                      workOutsideA + "', '" + workOutsideLimitationsA + "', '" + lift40A + "', " + totalHoursA + ", getdate())";

        insert.ExecuteNonQuery();



        int depNum = 2;


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



        

        insert.CommandText = "INSERT INTO AnimalCareApp (AnimalCareApp_PersonID, AnimalCareApp_HandsOnExperience, AnimalCareApp_HandleDeadAnimals, AnimalCareApp_OpinionLivePrey, AnimalCareApp_WorkOutside, AnimalCareApp_BelongToAnimalRightsGroup, AnimalCareApp_HopeToLearnAccomplish, AnimalCareApp_PassionateWildlifeIssue, AnimalCareApp_MoreAboutExperience) " +
			  "VALUES (" + personid + ", '" + experienceA + "', '" + deadAnimalsA + "', '" + livePreyA + "', '" + workOutsideA + "', '" + groupsA + "', '" + accomplishA + "', '" + issueA + "', '" + additionalInfoA + "')";

        insert.ExecuteNonQuery();
        }


    }



    protected void btnReset(object sender, EventArgs e)
    {






    }

}