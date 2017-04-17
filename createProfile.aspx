<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createProfile.aspx.cs" Inherits="createProfile" MaintainScrollPositionOnPostBack = "true" %>

<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>Create Profile</title>

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
						<a class="navbar-brand" href="profile.aspx"><img src="../images/logo_short.png" alt="Wildlife Small Logo"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">
                            <li class="active"><a href="createProfile.aspx">Create Profile</a></li>
                            <li><a href="index.aspx">Back</a></li>
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
                                        <header class="panel-heading clearfix"></header>
										<div class="content">
											<h3 class="col-md-6">Enter Profile Information</h3>
											<div class="col-md-3">
												<div class="text-center">
													<img src="../images/johndoe1.png" class="avatar img-circle img-responsive" alt="avatar">
													
													
												</div>
											</div>
											<div class="container">
												<hr>
												<div class="row">
												
													<!-- left column -->
											  
													<!-- edit form column -->
											  
													<div class="col-md-7 col-md-offset-1 personal-info">
													<form runat="server" class="form-horizontal" enctype = "multipart/form-data" method="post" role="form">
													<h6>Upload a photo...</h6>
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
																<input runat="server" id="tbfirstName" class="form-control" maxlength="20" name="firstName" 
                                                                    required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Last Name:</label>
															<div class="col-lg-8">
																<input runat="server" id="tblastName" class="form-control" maxlength="20" name="lastName" type="text" required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Email:</label>
															<div class="col-lg-8">
																<input runat="server" id="tbemail" class="form-control" maxlength="254" name="email" type="text" required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Phone:</label>
															<div class="col-lg-8">
																<input runat="server" id="tbphone" class="form-control" name="phone" pattern='\d{3}[\-]\d{3}[\-]\d{4}' title='Phone Number Format: 555-555-5555' required="required">
															</div>
														</div>
														<div class="form-group">
															<label runat="server" id="tbaltphone" class="col-lg-3 control-label">Alternate Phone:</label>
															<div class="col-lg-8">
																<input class="form-control" name="phoneAlt" pattern='\d{3}[\-]\d{3}[\-]\d{4}' title='Phone Number Format: 555-555-5555'>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Address:</label>
															<div class="col-lg-8">
																<input runat="server" id="tbAddress" class="form-control" maxlength="50" name="street"  type="text" required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">City:</label>
															<div class="col-lg-8">
																<input runat="server" id="tbCity" class="form-control" maxlength="40" name="city" type="text" required="required" />
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">State:</label>
															<div class="col-lg-8">
																
																<select runat="server" id="ddState" name="state">
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
																	<option value="Virginia">Virginia</option>
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
																<input runat="server" id="tbZipcode" class="form-control" pattern=".{5}" title="Enter 5 digit zipcode" name="zipcode" type="text" required="required" />
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Allergies or or physical limitations?:</label>
															<div class="col-lg-8">
																<asp:RadioButton 
                                                                    ID="rbAllergiesYes" 
                                                                    runat="server" 
                                                                    GroupName="limitationsASN" 
                                                                    value="Yes" 
                                                                    text="Yes" 
                                                                    Checked="true"
                                                                    AutoPostBack="true" OnCheckedChanged="rbAllergiesYes_CheckedChanged"/>
                                                                <br />
                                                                <asp:RadioButton 
                                                                    ID="rbAllergiesNo" 
                                                                    runat="server" 
                                                                    GroupName="limitationsASN" 
                                                                    value="No" 
                                                                    text="No" 
                                                                    AutoPostBack="true" OnCheckedChanged="rbAllergiesNo_CheckedChanged"/>
                                                                <asp:TextBox
                                                                    ID="tbAllergies"
                                                                    runat="server"
                                                                    class="form-control"
                                                                    TextMode="MultiLine"
                                                                    required="required">
                                                                </asp:TextBox>
                                                                <br />
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Able to work outside during all seasons? If not, what are your limitations?</label>
															<div class="col-lg-8">
																<asp:RadioButton 
                                                                    ID="rbWorkOutsideYes" 
                                                                    runat="server" 
                                                                    GroupName="limitationsWO" 
                                                                    value="Yes" 
                                                                    text="Yes" 
                                                                    AutoPostBack="true" OnCheckedChanged="rbWorkOutsideYes_CheckedChanged"/>
                                                                <br />
                                                                <asp:RadioButton 
                                                                    ID="rbWorkOutsideNo" 
                                                                    runat="server" 
                                                                    GroupName="limitationsWO" 
                                                                    value="No" 
                                                                    text="No" 
                                                                    Checked="true"
                                                                    AutoPostBack="true" OnCheckedChanged="rbWorkOutsideNo_CheckedChanged"/>
														         <asp:TextBox
                                                                    ID="tbWorkOutside"
                                                                    runat="server"
                                                                    class="form-control"
                                                                    TextMode="MultiLine"
                                                                    required="required">
                                                                </asp:TextBox>
                                                                <br />
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Rabies Vaccinated?</label>
															<div class="col-lg-8">
																<div class="checkbox">
																	<asp:RadioButton 
                                                                    ID="rbRabiesYes" 
                                                                    runat="server" 
                                                                    GroupName="rabies" 
                                                                    value="Yes"
                                                                    text="Yes"
                                                                    Checked="true"
                                                                    AutoPostBAck="true" OnCheckedChanged="rbRabiesYes_CheckedChanged"/>
                                                                <br />
                                                                <asp:RadioButton 
                                                                    ID="rbRabiesNo" 
                                                                    runat="server" 
                                                                    GroupName="rabies" 
                                                                    value="No" 
                                                                    text="No"
                                                                    AutoPostBAck="true" OnCheckedChanged="rbRabiesNo_CheckedChanged" />
																</div>
															</div>
														</div>
														<div runat="server" id="visibleRabies" class="form-group">
															<label class="col-sm-3">If so, how recently? Please provide proof of vaccination. Upload an attachment.</label>
															<div>
                                                                 <asp:TextBox 
                                                                    id="RabiesDatePick"
                                                                    runat="server"
                                                                     required="required"/>
                                                                (MM/DD/YYYY)
													        </div>
													        <div>
                                                                <span class="btn btn-default btn-file">
                                                                <asp:FileUpLoad id="FileUpLoad2" runat="server" required="required"/>
                                                                    </span>
                                                            </div>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">Do you have a permit to rehabilitate wildlife in the state of Virginia?</label>
															<div class="col-lg-8">
																<div class="checkbox" >
																	<asp:RadioButton 
                                                                    ID="rbRehabPermitYes" 
                                                                    runat="server" 
                                                                    GroupName="permit" 
                                                                    text="Yes"
                                                                    Checked="true"
                                                                    AutoPostBAck="true" OnCheckedChanged="rbRehabPermitYes_CheckedChanged" />
                                                                <br />
                                                                <asp:RadioButton 
                                                                    ID="rbRehabPermitNo" 
                                                                    runat="server" 
                                                                    GroupName="permit" 
                                                                    text="No"
                                                                    AutoPostBAck="true" OnCheckedChanged="rbRehabPermitNo_CheckedChanged"  />
																</div>
															</div>
														</div>
														<div runat="server" id="visibleRehabPermit" class="form-group">
															<label class="col-sm-3">If so, what category? Please upload a copy of your permit.</label>
																<div>
															    <select id="permitCategory" runat="server">
																    <option value="">--</option>
																    <option value="1">1</option>
																    <option value="2">2</option>
																    <option value="4">4</option>
															    </select>
														    </div>
                                                            <div>
                                                                <span class="btn btn-default btn-file">
                                                                <asp:FileUpLoad id="FileUpLoad1" runat="server" required="required"/>
                                                                    </span>
                                                            </div>
														</div>
														<div class="form-group">
															<label class="col-sm-3">Are you able to lift 40 lbs?</label>
															<div class="col-sm-7">
																<div class="checkbox">
																	<asp:RadioButton 
                                                                    ID="tb40Yes" 
                                                                    runat="server" 
                                                                    GroupName="fortyLBS" 
                                                                    value="Yes" 
                                                                    text="Yes"
                                                                    Checked="true"/>
                                                                <br />
                                                                <asp:RadioButton 
                                                                    ID="tb40No" 
                                                                    runat="server" 
                                                                    GroupName="fortyLBS" 
                                                                    value="No" 
                                                                    text="No"  />
																</div>
															</div>
														</div>
														<div class="form-group">
                                            				<label class="col-lg-3 control-label">Additional Notes:</label> 
 
															<div class="col-lg-8">
																<input runat="server" id="AdditionalNotes" class="form-control" type="text" value="">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Password:</label>
															<div class="col-md-8">
																<input runat="server" id="password" class="form-control" name="password" type="password" required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Confirm password:</label>
															<div class="col-md-8">
																<input runat="server" id="passwordConfirm" class="form-control" name="check" type="password" required="required">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label"></label>
															<div class="col-md-8">
                                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit Profile" class="btn btn-primary" OnClick="btnSubmit_Click" />

															</div>
														</div>
													</form>
												</div>
												</div>
												<hr>
											</div>
										</div>
									</div>
								</div>
								<div class="preview">
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
