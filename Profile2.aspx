<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile2.aspx.cs" Inherits="Profile2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Wildlife Center of Virginia Volunteers</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link rel="stylesheet" media="screen" href="css/style.css" />

</head>
<body>
    <div id="wrapper">
        <header>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                    </div>
    
                  <a class="navbar-brand" href="profile2.php"><img src="../484phpWork1/images/logo_short.png" alt="Wildlife Small Logo"></a>
                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">
							<li><a href="calendar2.aspx">Calendar</a></li>
							<li class="active"><a href="profilesearch.php">Search</a></li>
							<li><a href="excel.php">Excel</a></li>							
                            <li><a href="accountProfile.php">Account</a></li>                          
                            <li><a href="index.php">Sign Out</a></li>                     
                            </li>
							</ul>
                      
                    </div>

                </div>
            </nav>
        </header>
        
        <section>
            <div class="container">
                <div class="row">


    
                    <!-- Main Section -->



                    <section class="col-md-9 no-padding">
                        <div class="main-section">
                        
                            <div class="container-fluid no-padding">
                                <div class="col-md-7 no-padding">
                                    <div class="main-content panel panel-default no-margin">
                                        <header class="panel-heading clearfix">
<!--
                                             <?php
										if($pic == true){
											echo '<img class="img-responsive col-sm-4" src="data:image/jpeg;base64,'.base64_encode( $result['Documentation_FileContent'] ).'"/>';
										}
										else{
											echo '<img src="images/johndoe.png" class="img-responsive col-sm-4"></span>';
										}
										?>
                                             <hgroup>
                                                 <a href="editprofile2.php" class="btn btn-default pull-right" rel="#overlay">Edit Profile<i class="fa fa-question-circle"></i></a>
                                                 <h2>
                                                     <?php echo $first . " " . $last?>
                                                 </h2>
                                                 <h4><?php echo $userType ?> </h4>
												 <h5><?php if ($userType == 'Volunteer') echo "Status: " . $status; ?> </h5>
                                             </hgroup>
    -->                                        
                                        </header>
<div class="content">
                                        <h3>Contact Information</h3>
<div class="panel panel-default">
  <div class="panel-body">
    <strong>Email - </strong> <!-- <?php echo $email ?> -->
  </div>
</div>                                        
<div class="panel panel-default">
  <div class="panel-body">
    <strong>Phone - </strong> <!-- <?php echo $phone ?> -->
  </div>
</div>    
<div class="panel panel-default">
  <div class="panel-body">
    <strong>Address - </strong> <!-- <?php echo $street. ', '. $city.', '. $state . ' ' .$zipcode ?> -->
  </div>
</div>  
<div class="row">
<div class="col-sm-6">
<h4>Volunteer Hours</h4>
<ul>
	<li>YTD Hours: <!-- <?php echo $ytdHours + $ytdHoursTrans ?></li> -->
	<li>Total Hours: <!-- <?php echo $totalHours + $totalHoursTrans ?></li> -->
</ul>  </div>                                        
<div class="col-sm-6">
<h4>Transport Miles</h4>
<ul>
	<li>YTD Miles: <!-- <?php echo $ytdMiles ?></li> -->
	<li>Total Miles: <!-- <?php echo $totalMiles ?></li> -->
</ul>
</div></div>

                                      
                                        <h3>Outreach</h3>
                                        <div class="row">
                                        <div class="col-sm-6">
                                        <h4>Tours</h4>
                                        <ul>
                                            <li>Shadow: 1</li>
                                            <li>Intro Portion: Yes</li>
                                            <li>Lead Alone: No</li>
                                        </ul>  </div>                                        <div class="col-sm-6"><h4>Off-Site Displays</h4>
               <p>Yes</p></div></div>
<div class="row col-sm-12">
<h4>Animal Handling</h4>
</div>
<div class="row">
<div class="col-sm-6">
<p>Reptile Handling Overview:</p>
<ul>      <li>Alligator</li>
            <li>Iguana</li>
                  <li>Chameleon</li></ul>
<p>No additional notes</p></div>

<div class="col-sm-6">
<p>Raptor Handling Overview:</p>
                                        <ul>
                                            <li>Falconers Knot: No</li>
                                            <li>Parrot</li>
                                            <li>Flamingo</li>
                                            <li>Raven</li> 
                                            <li>Penguin</li>
                                                                                    </ul>
                                            <p>No additional notes</p>

                                    </div> <div>

                                    
                                    <h3>Application Responses</h3>
                                    
											<div class="panel panel-default">
												<div >

												<?php if ($departmentID == 1) { ?> 
												<?= ' <h4>Outreach Questions <?= $departmentID ?></h4>
													<h4>Why Interested</h4>
													<ul>
														<strong>Why are you interested in volunteering as an outreach docent? </strong> ' .$whyInterested. '

													</ul>

													<h4>Wildlife Issues</h4>
													<ul>
														<strong>What’s an environmental or wildlife issue you feel passionately about, and why? </strong> ' .$wildlifeIssue. '
													</ul>
													<h4>Public Speaking</h4>
													<ul>
														<strong>Do you have prior experience speaking to the public? Please describe. </strong> ' .$publicSpeaking. '
													</ul>
													<h4>Wildlife Groups</h4>
													<ul>
														<strong>Do you belong to any animal rights groups (PETA, The Humane Society, etc.)? If so, which ones? </strong> ' .$wildlifeGroup. '
													</ul>
													<h4>Contributions</h4>
													<ul>
														<strong>What do you think you’d bring to the outreach volunteer team?
														</strong> ' .$bringToTeam. '
													</ul>';}?>
													</div>


													<?php if ($departmentID == 2) { ?> 
												<?= ' <h4>Animal Care Questions </h4>
													<h4>Hands On Experience</h4>
													<ul>
														<strong>Please briefly describe your relevant hands-on experience with animals, if any. What did you enjoy about the experience? What did you dislike? </strong> ' .$handsOnExperience. '
													</ul>

													<h4>Wildlife Issues</h4>
													<ul>
														<strong>Carnivorous patients are sometimes unable to eat food items whole due to their injuries; you may be required to cut and divide dead rodents, chicks, and fishes into smaller portions. Are you comfortable handling dead animals for this purpose? 
														</strong> ' .$deadAnimals. '
													</ul>
													<h4>Public Speaking</h4>
													<ul>
														<strong>Prior to release from the Wildlife Center, many predatory birds are presented with live mice in order to evaluate their ability to capture prey in a controlled and measurable environment. What is your opinion on using live-prey for this purpose? 
														</strong> ' .$livePrey. '
													</ul>
													<h4>Limitations</h4>
													<ul>
														<strong>Wildlife rehabilitation requires daily outdoor work -- year-round and regardless of weather conditions. Are you able to work outside during all seasons? If not, what are your limitations? </strong> ' .$workOutside. '
													</ul>
													<h4>Animal Rights Groups</h4>
													<ul>
														<strong>Do you belong to any animal rights groups (PETA, The Humane Society, etc.)? If so, which ones? </strong> ' .$animalRightsGroup. '
													</ul>
													<h4>Accomplishment</h4>
													<ul>
														<strong>What do you hope to learn or accomplish by volunteering at the Wildlife Center of Virginia? </strong> ' .$learn. '
													</ul>
													<h4>Wildlife-Based Issue</h4>
													<ul>
														<strong>Please describe an environmental or wildlife-based issue you feel passionately about, and why. </strong> ' .$wildlifeIssueA. '
													</ul>
													<h4>Additional Information</h4>
													<ul>
														<strong>Is there anything else that you’d like us to know about yourself or your experience?
														</strong> ' .$additionalExperience.'
													</ul>';}?>
													
                               </div>
                               

                               
                               <div class="col-sm-6">
                           

												<?php if ($departmentID == 3) {  ?>
												<?= '<h4>Vet Team Questions</h4>
													<h4>Previous Training</h4>
													<ul>
														<strong>Please describe any previous medical or veterinary training you have completed.
														</strong> ' .$training. ' 
													</ul>

													<h4>Animal Handling</h4>
													<ul>
														<strong>The case load at the Center can be unpredictable and vary greatly depending on the time of year. Please describe the work environment that you work best in including how you best retain information that is taught to you.
														</strong> ' .$workEnvironment. '
													</ul>
													<h4>Euthanasia Experience</h4>
													<ul>
														<strong>The Center admits many trauma cases. In order for a patient to be released back into the wild it must be able to successfully survive on its own free of chronic pain. Due to this, the Center does humanely euthanize patients that do not meet this standard. Do you have experience with euthanasia and how does it affect you? 
														</strong> ' .$euthansia. '
													</ul>
													<h4>Maintenance</h4>
													<ul>
														<strong>Taking care of animals is a messy job that requires all team members to clean out dirty crates, chop rats or mice for feeding to patients, and collect fecal samples for analysis for example. Is this something that you foresee struggling with?
														</strong> ' .$messy. '
													</ul>';}
													 ?>

													
													</div>

													<?php if ($departmentID == 4) {  ?>
													<?= '<h4>Transporter Questions</h4>
													<h4>Travel Distance</h4>
													<ul>
														<strong>How far are you willing to travel for transport (i.e., 30-45 miles from your location, to a specific location, etc)?
														</strong> ' .$distance. ' 
													</ul>

													<h4>Animal Handling</h4>
													<ul>
														<strong>Sometimes rescuers need assistance with capturing and containing a wild animal in need. For those who are interested in capturing injured animals. With that in mind, would you be willing to assist with capturing animals, if needed?
														</strong> ' .$capture. '
													</ul>';} ?>
													
                               </div></div></div>
                               </div>
                                   
      <!--                         
							   
<?php

$servername = "localhost";
$username = "root";
$dbpassword = "Twspike1994?";
$dbname = "wildlife";

// Create connection
$conn = new mysqli($servername, $username, $dbpassword, $dbname);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
//SQL Statement to gather Documents to display download buttons
$sql = "SELECT Documentation_TypeOfDocument FROM Documentation WHERE Documentation_PersonID =" .$profileID;
$result = $conn->query($sql);
if ($result->num_rows > 0){
	// output data of each row
	while($row = $result->fetch_assoc()) {
		$docType = $row['Documentation_TypeOfDocument'];
		
		
		echo '
		<form method="post"><p>Download ' .$docType . ':</p>
		<button  name="btn'.$docType.'" class="btn btn-default" type="submit">Download</button></form>';
							   
	}
}

          -->

							   </div>
							   
             <!--                   <div class="preview-pane col-md-5">
        <div class="panel panel-default"><div class="panel-body"><h4>Team Lead Notes:</h4>  </ul>
		<?php echo ($teamLeadNotes);?>
                                    </div></div>
                                         <ul class="additionalinfo" class="fa-ul pull-right">
                                            <h2>Additional info</h2>
                                            <h4>Allergies</h4> <?php echo $allergiesYN . $allergies?>
                                            <h4>Outside/Physical Limitations</h4> <?php echo $outsideYN . $outside ?>
                                            <h4>Rabies Vaccinated</h4> <?php echo $rabiesYN ?>
                                            <h4>Permit</h4> <?php echo $permitYN ?>
                                            <h4>Emergency Contact</h4> Sean Young (540)555-8202

                                       
    <h4>Weekly Availability</h4> 
    <i><?php echo $availabilityType ?></i> <br>
    <?php echo $daysAvailable ?> </ul>
    <!-- <img src="images/joecalendar.png" alt="calendar" class="img-responsive"> 

	<div class="form-group">
	<form method="post">
		<button name="btnAccept"  class="btn btn-default" <?php if(($userType != "Applicant") && ($userType != "Rejected")) echo 'style="display:none;"'?> type="submit">Accept Applicant</button>
		<button name="btnReject"class="btn btn-default" <?php if($userType != "Applicant") echo 'style="display:none;"'?> type="submit">Reject Applicant</button>
	</form>
	</div>
	  </div> -->
                                    
                                    </div>
                                    <div class="preview">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </section>

                    <!-- Main Section End -->
                </div>
            </div>
            <div id="push"></div>
        </section>
    </div>

    <footer>
        <div id="footer-inner" class="container">
            <div>
			    
                <span class="pull-right"> &copy; 2017. All rights reserved. Owl Team
            </div>
        </div>
    </footer>


    <!-- render blocking scripts -->

    <!-- jQuery JS -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- markitup! -->
    <script type="text/javascript" src="markitup/jquery.markitup.js"></script>
    <!-- markItUp! toolbar settings -->
    <script type="text/javascript" src="markitup/sets/default/set.js"></script>

    <!-- Main Script -->
    <script src="js/global.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            // Add markItUp! to your textarea in one line
            $('.markItUpTextarea').markItUp(mySettings, { root: 'markitup/skins/simple/' });
        });
    </script>
</body>
</html>
