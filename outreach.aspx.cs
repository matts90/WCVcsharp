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

    
        try {
            firstName = tbfirstName.Text.ToString();
            lastName = tblastName.Text.ToString();
            outreachPassword = password.Text.ToString();
            email = tbemail.Text.ToString();
            phoneNum = phone.Text.ToString();
            addressProvided = address.Text.ToString();
            City = city.Text.ToString();
            State = homestate.Value.ToString();
            zipcode = zip.Text.ToString();
            DOB = DOBMonth.Value.ToString() + "/" +
                DOBDay.Value.ToString() + "/" +
                DOBYear.Value.ToString();
            dayOfWeek = "a";
            bool rpIsChecked = RadioButton1.Checked;
            if (rpIsChecked)
                rehabPermitYN = RadioButton1.Text.ToString();
            else
                rehabPermitYN = RadioButton2.Text.ToString();
            rehabPermitCat = permitCategory.Value.ToString();
            bool rvIsChecked = RadioButton3.Checked;
            if (rvIsChecked)
                rabiesVacYN = RadioButton3.Text.ToString();
            else
                rabiesVacYN = RadioButton4.Text.ToString();
            rabiesVacDate = VacMonth.Value.ToString() + "/" +
                VacDay.Value.ToString() + "/" +
                VacYear.Value.ToString();
            bool lift40IsChecked = RadioButton5.Checked;
            if (lift40IsChecked)
                lift40 = RadioButton5.Text.ToString();
            else
                lift40 = RadioButton6.Text.ToString();
            bool allergIsChecked = RadioButton7.Checked;
            if (allergIsChecked)
                allergiesLimitsYN = RadioButton7.Text.ToString();
            else
                allergiesLimitsYN = RadioButton7.Text.ToString();
            allergiesLimitsTB = TextBox1.Text.ToString();
            bool woIsChecked = RadioButton9.Checked;
            if (woIsChecked)
                outdoorWorkTB = RadioButton9.Text.ToString();
            else
                outdoorWorkTB = RadioButton10.Text.ToString();
            outdoorWorkTB = TextBox2.Text.ToString();
            interest = TextBox7.Text.ToString();
            passionateIssue = TextBox3.Text.ToString();
            publicSpeaking = TextBox4.Text.ToString();
            animalRightsGroup = TextBox5.Text.ToString();
            bringToTeam = TextBox6.Text.ToString();
        }
        catch (System.Data.SqlClient.SqlException sqlException) {
        }

    }
    protected void Button2_Click(object sender, EventArgs e) {

    }
    
}