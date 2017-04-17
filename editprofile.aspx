<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="editprofile" %>

<html>
<head>
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
                      <a class="navbar-brand" href="profile.php"><img src="../484phpWork1/images/logo_short.png" alt="Wildlife Small Logo"></a>
                    </div>
    
                  
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">

                            <li class="active"><a href="profile.php">Profile</a></li>
                            <li><a href="calendar.php">Calendar</a></li>
                            <li><a href="index.php">Sign Out</a></li>
                                </ul>
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
                                <div class="col-md-12 no-padding">
                                    <div class="main-content panel panel-default no-margin">
                                        <header class="panel-heading clearfix">

                                             

                                            
                                        </header>
<div class="content">
                                        <h3 class="col-md-6">Edit Contact Information</h3>
                                              <div class="col-md-3">
        <div class="text-center">
          <?php
			if($pic == true){
				echo '<img class="img-responsive col-sm-4" src="data:image/jpeg;base64,'.base64_encode( $result['Documentation_FileContent'] ).'"/>';
			}
			else{
				echo '<img src="images/johndoe.png" class="img-responsive col-sm-4"></span>';
			}
			?>
          <h6>Upload a different photo...</h6>
          
        </div>
      </div>
<div class="container">
  	<hr>
	<div class="row">
      <!-- left column -->

      
      <!-- edit form column -->
      <div class="col-md-7 col-md-offset-1 personal-info">
		<form class="form-horizontal" enctype = "multipart/form-data" method="post" role="form">
		<div class="fileinput fileinput-new" data-provides="fileinput">
				<span class="btn btn-default btn-file">
					<input name="picture" id = "picture" type="file" multiple /></span>
				<span class="fileinput-filename"></span>
				<span class="fileinput-new"></span>
			</div>
        <h3>Personal Info</h3>
          <div class="form-group">
            <label class="col-lg-3 control-label">First Name:</label>
            <div class="col-lg-8">
              <input class="form-control" maxlength="20" name="firstName" value="<?php echo ($first);?>" type="text" required="required">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last Name:</label>
            <div class="col-lg-8">
              <input class="form-control" maxlength="20" name="lastName" value="<?php echo ($last);?>" type="text" required="required">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" maxlength="254" name="email" value="<?php echo ($email);?>" type="email" required="required">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Phone:</label>
            <div class="col-lg-8">
              <input class="form-control" name="phone" value="<?php echo ($phone);?>" type='tel' pattern='\d{3}[\-]\d{3}[\-]\d{4}' title='Phone Number Format: 555-555-5555'>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Address:</label>
            <div class="col-lg-8">
              <input class="form-control" maxlength="50" name="street" value="<?php echo ($street);?>" type="text" required="required">
            </div>
          </div>
		  <div class="form-group">
			<label class="col-lg-3 control-label">City:</label>
			<div class="col-lg-8">
			  <input class="form-control" maxlength="40" name="city" value="<?php echo ($city);?>" type="text" required="required" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-lg-3 control-label">State:</label>
			<div class="col-lg-8">
			
				 <select id="homestate" runat="server">
                                                            <option value="Virginia">Virginia</option>
															<option value="Alabama">Alabama</option>
															<option value="Alaska">Alaska</option>
															<option value="Arizona">Arizona</option>
															<option value="Arkansas">Arkansas</option>
															<option value="California">California</option>
															<option value="Colorado">Colorado</option>
															<option value="Connecticut">Connecticut</option>
															<option value="Delaware">Delaware</option>
															<option value="Florida">Florida</option>
															<option value="Georgia">Georgia</option>
															<option value="Hawaii">Hawaii</option>
															<option value="Idaho">Idaho</option>
															<option value="Illinois">Illinois</option>
															<option value="Indiana">Indiana</option>
															<option value="Iowa">Iowa</option>
															<option value="Kansas">Kansas</option>
															<option value="Kentucky">Kentucky</option>
															<option value="Louisiana">Louisiana</option>
															<option value="Maine">Maine</option>
															<option value="Maryland">Maryland</option>
															<option value="Massachusetts">Massachusetts</option>
															<option value="Michigan">Michigan</option>
															<option value="Minnesota">Minnesota</option>
															<option value="Mississippi">Mississippi</option>
															<option value="Missouri">Missouri</option>
															<option value="Montana">Montana</option>
															<option value="Nebraska">Nebraska</option>
															<option value="Nevada">Nevada</option>
															<option value="New Hampshire">New Hampshire</option>
															<option value="New Jersey">New Jersey</option>
															<option value="New Mexico">New Mexico</option>
															<option value="New York">New York</option>
															<option value="North Carolina">North Carolina</option>
															<option value="North Dakota">North Dakota</option>
															<option value="Ohio">Ohio</option>
															<option value="Oklahoma">Oklahoma</option>
															<option value="Oregon">Oregon</option>
															<option value="Pennsylvania">Pennsylvania</option>
															<option value="Rhode Island">Rhode Island</option>
															<option value="South Carolina">South Carolina</option>
															<option value="South Dakota">South Dakota</option>
															<option value="Tennessee">Tennessee</option>
															<option value="Texas">Texas</option>
															<option value="Utah">Utah</option>
															<option value="Vermont">Vermont</option>
															<option value="Washington">Washington</option>
															<option value="West Virginia">West Virginia</option>
															<option value="Wisconsin">Wisconsin</option>
															<option value="Wyoming">Wyoming</option>
                                                        </select> 
			</div>
		</div>
		<div class="form-group">
			<label class="col-lg-3 control-label">Zip Code:</label>
			<div class="col-lg-8">
			  <input class="form-control" pattern=".{5}" title="Enter 5 digit zipcode" name="zipcode" value="<?php echo ($zipcode);?>" type="text" required="required" />
			</div>
			
		</div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Allergies:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" name="allergies" value="<?php echo ($allergies);?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Physical Limitations:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" name="outside" value="<?php echo ($outside);?>">
            </div>
          </div>
          <div class="form-group">
				<label class="col-lg-3 control-label">Rabies Vaccinated?</label>
				<div class="col-lg-8">
					<div class="checkbox">
						<input type="radio" name="rabies" value="Yes" <?php if ($rabies == 'Yes') echo ' checked="checked"';?>> Yes
						<input type="radio" name="rabies" value="No" <?php if ($rabies == 'No') echo ' checked="checked"';?>> No
					</div>
				</div>
			</div>
          <div class="form-group">
				<label class="col-lg-3 control-label">Permit to rehabilitate wildlife in Virginia?</label>
				<div class="col-lg-8">
					<div class="checkbox" >
						<input type="radio" name="permit" value="Yes" <?php if ($permit == 'Yes') echo ' checked="checked"';?>> Yes
						<input type="radio" name="permit" value="No" <?php if ($permit == 'No') echo ' checked="checked"';?>> No
					</div>
				</div>
			</div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Additional Notes:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" name="notes">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Change Password?</label>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input class="form-control" name="password" type="password">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
              <input class="form-control" name="check" type="password">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="submit" name="btnSave" class="btn btn-primary" value="Save Changes">
              <span></span>
              <input type="submit" name="btnCancel" class="btn btn-default" formnovalidate value="Cancel">
            </div>
          </div
		  <?php
ini_set('display_errors', 'On');
error_reporting(E_ALL);
?>
        </form>
      </div>
  </div>
</div>
<hr>


                                    </div>
                               </div></div>

  
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
                <span class="pull-right" class="footer" > &copy; 2017. All rights reserved. Owl Team
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
