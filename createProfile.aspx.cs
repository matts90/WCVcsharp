using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createProfile : System.Web.UI.Page
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

    protected void btnSubmit_Click(object sender, EventArgs e) {








    }





    protected void rbAllergiesYes_CheckedChanged(object sender, EventArgs e) {
        tbAllergies.Visible = true;
    }
    protected void rbAllergiesNo_CheckedChanged(object sender, EventArgs e) {
        tbAllergies.Visible = false;
    }
    protected void rbWorkOutsideYes_CheckedChanged(object sender, EventArgs e) {
        tbWorkOutside.Visible = false;
    }
    protected void rbWorkOutsideNo_CheckedChanged(object sender, EventArgs e) {
        tbWorkOutside.Visible = true;
    }
    protected void rbRabiesYes_CheckedChanged(object sender, EventArgs e) {
        visibleRabies.Visible = true;
    }
    protected void rbRabiesNo_CheckedChanged(object sender, EventArgs e) {
        visibleRabies.Visible = false;
    }
    protected void rbRehabPermitYes_CheckedChanged(object sender, EventArgs e) {
        visibleRehabPermit.Visible = true;
    }
    protected void rbRehabPermitNo_CheckedChanged(object sender, EventArgs e) {
        visibleRehabPermit.Visible = false;
    }

    
}