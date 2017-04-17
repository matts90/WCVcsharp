<%@ Page Language="C#" AutoEventWireup="true" CodeFile="outreach.aspx.cs" Inherits="outreach" MaintainScrollPositionOnPostBack = "true"%>


<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>Outreach Application</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">


	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous">
	</script>

    <!-- Date Picker -->
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <link rel="stylesheet" href="/resources/demos/style.css">
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script>
          $(function () {
              $("#DOBDatePick").datepicker();
              $("#RabiesDatePick").datepicker();
          });
      </script>


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
                        <a class="navbar-brand"><img src="../images/logo_short.png" alt="Wildlife Small Logo"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">
                                <li class="active"><a href="forms.aspx">Application</a></li>
							    <li><a href="forms.aspx">Back</a></li>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        
        
        <section>
            <div class="container">
			
				<!-- Main Section -->
			
                <div class="row">
                    <section class="col-md-12">
                        <div class="main-section">
                            <div class="main-content panel panel-default">
                                <header class="panel-heading clearfix">
                                    <h2 class="panel-title">
                                        Wildlife Center of Virginia - Outreach Application
                                    </h2>
                                </header>
                                <section class="panel-body container-fluid">
                                    <div class="leading">
										<form 
                                            runat="server"
                                            method="post"
                                            class="form-horizontal panel panel-default" >
											<header class="panel-heading">
                                                <h2 class="panel-title">Basic Information</h2>
											</header>
											<fieldset class="panel-body">
												<div class="form-group">
                                                    <label class="col-sm-2">First Name</label>
													<div class="col-sm-10">
                                                        <asp:TextBox
                                                            runat="server"
                                                            ID="tbfirstName"
                                                            required="required"
                                                            CSSclass="form-control"
                                                            type="text">
                                                        </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Last Name</label>
													<div class="col-sm-10">
                                                        <asp:TextBox
                                                            runat="server"
                                                            ID="tblastName"
                                                            required="required"
                                                            CSSclass="form-control">
                                                        </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Create Password </label>
													<div class="col-sm-10">
                                                        <asp:TextBox
                                                            runat="server"
                                                            ID="password"
                                                            required="required"
                                                            CSSclass="form-control">
                                                        </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Confirm Password</label>
													<div class="col-sm-10">
													 <asp:TextBox
                                                         runat="server"
                                                         ID="check"
                                                         required="required"
                                                         CSSclass="form-control">
													 </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Email</label>
													<div class="col-sm-10">
													  <asp:TextBox
                                                          runat="server"
                                                          ID="tbemail"
                                                          required="required"
                                                          CSSclass="form-control">
													  </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Phone</label>
													<div class="col-sm-10">
													 <asp:TextBox
                                                         runat="server"
                                                         ID="phone"
                                                         required="required"
                                                         CSSclass="form-control">
													 </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Address</label>
													<div class="col-sm-10">
													 <asp:TextBox
                                                         runat="server"
                                                         ID="address"
                                                         required="required"
                                                         CSSclass="form-control">
													 </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">City</label>
													<div class="col-sm-2">
													  <asp:TextBox
                                                          runat="server"
                                                          ID="city" 
                                                          required="required"
                                                          CSSclass="form-control">
													  </asp:TextBox>
													</div>
													<label class="col-sm-1">State</label>
													<div class="col-sm-3">

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
													<label class="col-sm-2">Zip Code</label>
													<div class="col-sm-2">
													  <asp:TextBox
                                                          runat="server"
                                                          ID="zip"
                                                          required="required"
                                                          CSSclass="form-control">
													  </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Date of Birth</label>
                                                    <div class="col-sm-10">
                                                        <asp:TextBox 
                                                            id="DOBDatePick"
                                                            runat="server"/>
                                                        (MM/DD/YYYY)
                                                    </div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you able to work All Year or Seasonal?</label>
													<div class="col-sm-7">
														<div class="checkbox" >
                                                            <asp:RadioButton
                                                                ID="RadioButton11"
                                                                runat="server"
                                                                GroupName="work"
                                                                value="All Year"
                                                                text="All Year" 
                                                                Checked="true"/>
                                                            <br />
                                                            <asp:RadioButton
                                                                ID="RadioButton12"
                                                                runat="server"
                                                                GroupName="work"
                                                                value="Seasonal"
                                                                text="Seasonal"  />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Availability</label>
													<table style="width:10%">
														<tr>
															<td>Sundays</td>
                                                            <td><asp:CheckBox
                                                                ID="CheckBox1"
                                                                runat="server"
                                                                value="Sunday"/>
                                                            </td>
														</tr>
														<tr>
															<td>Mondays</td>
                                                            <td><asp:CheckBox
                                                                ID="CheckBox2"
                                                                runat="server" 
                                                                value="Monday"/>
                                                            </td>
															</tr>
														<tr>
															<td>Tuesdays</td>
                                                            <td><asp:CheckBox
                                                                ID="CheckBox3" 
                                                                runat="server" 
                                                                value="Tuesday"/>
                                                            </td>
															</tr>
														<tr>
														    <td>Wednesdays</td>
                                                            <td><asp:CheckBox 
                                                                ID="CheckBox4" 
                                                                runat="server" 
                                                                value="Wednesday"/>
                                                            </td>
														</tr>
													    <tr>
														    <td>Thursdays</td>
                                                            <td><asp:CheckBox 
                                                                ID="CheckBox5" 
                                                                runat="server" 
                                                                value="Thursday"/>
                                                            </td>
														    </tr>
													    <tr>
														    <td>Fridays</td>
                                                            <td><asp:CheckBox 
                                                                ID="CheckBox6" 
                                                                runat="server"
                                                                value="Friday"/>
                                                            </td>
														    </tr>
														<tr>
															<td>Saturdays</td>
                                                            <td><asp:CheckBox 
                                                                ID="CheckBox7" 
                                                                runat="server" 
                                                                value="Saturday"/>
                                                            </td>
															</tr>
													</table>
												</div>
												
												<h4>Please answer the following questions.</h4>
												
												<div class="form-group">
													<label class="col-sm-3">Do you have a permit to rehabilitate wildlife in the state of Virginia?</label>
													<div class="col-sm-7">
														<div class="checkbox" >
                                                            <asp:RadioButton 
                                                                ID="RadioButton1" 
                                                                runat="server" 
                                                                GroupName="permit" 
                                                                text="Yes"
                                                                Checked="true"
                                                                OnCheckedChanged="RadioButton1_CheckedChanged"
                                                                AutoPostBAck="true" />
                                                            <br />
                                                            <asp:RadioButton 
                                                                ID="RadioButton2" 
                                                                runat="server" 
                                                                GroupName="permit" 
                                                                text="No"
                                                                OnCheckedChanged="RadioButton2_CheckedChanged"
                                                                AutoPostBAck="true"  />
														</div>
													</div>
												</div>
												<div id="visibleRahab" class="form-group" runat="server">
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
                                                            <asp:FileUpLoad id="FileUpLoad1" runat="server" CausesValidation="false" UseSubmitBehavior="false" />
                                                                </span>
                                                        </div>
                                                    <!--
														<div class="fileinput fileinput-new" data-provides="fileinput">
															<span class="btn btn-default btn-file">
                                                                
                                                                
                                                                
                                                                
                                                            <!--    <input name="permitRehabVA" id="permitRehabVA" type="file" runat="server" /> --
															
                                                            
                                                            
                                                            
                                                            </span>
															<span class="fileinput-filename"></span>
															<span class="fileinput-new"></span>
														</div>
                                                        -->
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you rabies vaccinated?</label>
													<div class="col-sm-7">
														<div class="checkbox">
                                                            <asp:RadioButton 
                                                                ID="RadioButton3" 
                                                                runat="server" 
                                                                GroupName="rabies" 
                                                                value="Yes"
                                                                text="Yes"
                                                                Checked="true"
                                                                OnCheckedChanged="RadioButton3_CheckedChanged"
                                                                AutoPostBAck="true"/>
                                                            <br />
                                                            <asp:RadioButton 
                                                                ID="RadioButton4" 
                                                                runat="server" 
                                                                GroupName="rabies" 
                                                                value="No" 
                                                                text="No"
                                                                AutoPostBAck="true"
                                                                OnCheckedChanged="RadioButton4_CheckedChanged"  />
														</div>
													</div>
												</div>
												<div class="form-group" id="visibleRabiesDoc" runat="server">
													<label class="col-sm-3">If so, how recently? Please provide proof of vaccination. Upload an attachment.</label>
													<div>
                                                         <asp:TextBox 
                                                            id="RabiesDatePick"
                                                            runat="server"/>
                                                        (MM/DD/YYYY)
													</div>
													<div class="fileinput fileinput-new" data-provides="fileinput">
														<span class="btn btn-default btn-file">
															<input
                                                                name="rabbiesDocumentation" 
                                                                id = "rabbiesDocumentation" 
                                                                type="file" multiple /></span>
														<span class="fileinput-filename"></span>
														<span class="fileinput-new"></span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you able to lift 40 lbs?</label>
													<div class="col-sm-7">
														<div class="checkbox">
                                                            <asp:RadioButton 
                                                                ID="RadioButton5" 
                                                                runat="server" 
                                                                GroupName="fortyLBS" 
                                                                value="Yes" 
                                                                text="Yes"
                                                                Checked="true"/>
                                                            <br />
                                                            <asp:RadioButton 
                                                                ID="RadioButton6" 
                                                                runat="server" 
                                                                GroupName="fortyLBS" 
                                                                value="No" 
                                                                text="No"  />
                                                            <br />
                                                            <br />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Do you have any allergies or physical limitations? If so, please explain.</label>
													<div class="col-sm-9">
                                                        <asp:RadioButton 
                                                            ID="RadioButton7" 
                                                            runat="server" 
                                                            GroupName="limitationsASN" 
                                                            value="Yes" 
                                                            text="Yes" 
                                                            Checked="true"
                                                            AutoPostBack="true"
                                                            OnCheckedChanged="RadioButton7_CheckedChanged"/>
                                                        <br />
                                                        <asp:RadioButton 
                                                            ID="RadioButton8" 
                                                            runat="server" 
                                                            GroupName="limitationsASN" 
                                                            value="No" 
                                                            text="No" 
                                                            AutoPostBack="true"
                                                            OnCheckedChanged="RadioButton8_CheckedChanged"/>
                                                        <asp:TextBox
                                                            ID="TextBox1"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                            required="required">
                                                        </asp:TextBox>
                                                        <br />
                                                        <br />
													</div>
													<label class="col-sm-3">A volunteer may be required to perform outdoor work -- year-round and regardless of weather conditions. Are you able to work outside during all seasons? If not, what are your limitations?</label>
													<div class="col-sm-9">
                                                        <asp:RadioButton 
                                                            ID="RadioButton9" 
                                                            runat="server" 
                                                            GroupName="limitationsWO" 
                                                            value="Yes" 
                                                            text="Yes" 
                                                            Checked="true"
                                                            AutoPostBack="true"
                                                            OnCheckedChanged="RadioButton9_CheckedChanged"/>
                                                        <br />
                                                        <asp:RadioButton 
                                                            ID="RadioButton10" 
                                                            runat="server" 
                                                            GroupName="limitationsWO" 
                                                            value="No" 
                                                            text="No" 
                                                            AutoPostBack="true" 
                                                            OnCheckedChanged="RadioButton10_CheckedChanged" />
														 <asp:TextBox
                                                            ID="TextBox2"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                            required="required">
                                                        </asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
													</div>
													<label class="col-sm-3">Why are you interested in volunteering as an outreach docent?</label>
													<div class="col-sm-9">
														<asp:TextBox
                                                            ID="TextBox7"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                            required="required">
                                                        </asp:TextBox>
                                                        <br />
													</div>
													<label class="col-sm-3">What’s an environmental or wildlife issue you feel passionately about, and why?</label>
													<div class="col-sm-9">
														 <asp:TextBox
                                                            ID="TextBox3"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                             required="required">
                                                        </asp:TextBox>
                                                        <br />
													</div>
													<label class="col-sm-3">Do you have prior experience speaking to the public? Please describe.</label>
													<div class="col-sm-9">
														 <asp:TextBox
                                                            ID="TextBox4"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                             required="required">
                                                        </asp:TextBox>
                                                        <br />
													</div>
													<label class="col-sm-3">Do you belong to any animal rights groups (PETA, The Humane Society, etc.)? If so, which ones? </label>
													<div class="col-sm-9">
														 <asp:TextBox
                                                            ID="TextBox5"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                            required="required">
                                                        </asp:TextBox>
                                                        <br />
													</div>                  
													<label class="col-sm-3">What do you think you’d bring to the outreach volunteer team?</label>
													<div class="col-sm-9">
														 <asp:TextBox
                                                            ID="TextBox6"
                                                            runat="server"
                                                            class="form-control"
                                                            TextMode="MultiLine"
                                                            required="required">
                                                        </asp:TextBox>
                                                        <br />
													</div>
													<label class="col-sm-3">Please upload a current resume.</label>
													<div class="col-sm-9 fileinput fileinput-new" data-provides="fileinput">
														<span class="btn btn-default btn-file">
															<input 
                                                                name="userFile" 
                                                                id = "userFile" 
                                                                type="file" 
                                                                multiple />
														</span>
														<span class="fileinput-filename"></span>
														<span class="fileinput-new"></span>
														</div>
												</div>
											</fieldset>
											<footer class="panel-footer">
                                                <asp:Button 
                                                    ID="Button1" 
                                                    runat="server" 
                                                    Text="Submit form" 
                                                    class="btn btn-primary"
                                                    OnClick="Button1_Click" />
                                                <asp:Button 
                                                    ID="Button2"
                                                    runat="server"
                                                    Text="Reset" 
                                                    class="btn btn-default" 
                                                    OnClick="Button2_Click"/>
											</footer>
                                        </form>
									</div>
								</section>
							</div>
						</div>
					</section>

				</div>
    
				<!-- Main Section End -->

			</div>
		</section>
	</div>
	<div id="push"></div>
    <footer>
        <div id="footer-inner" class="container">
            <div>
                <span class="pull-right footer" > &copy; 2017. All rights reserved. Owl Team </span>
            </div>
        </div>
    </footer>

	<!-- IS ANY OF THIS NEEDED??
	
	
	
	
	
	
	
    <!-- simple dialog --
    <div class="modal fade" id="simpledialog" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Modal title</h4>
          </div>
          <div class="modal-body">
            <p>One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content --
      </div><!-- /.modal-dialog --
    </div><!-- /.modal --

    <!-- yes/no dialog --
    <div class="modal fade" id="yesno" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Modal title</h4>
          </div>
          <div class="modal-body">
            <p>One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
          </div>
        </div><!-- /.modal-content --
      </div><!-- /.modal-dialog --
    </div><!-- /.modal --

    <!-- user input dialog --
    <div class="modal fade" id="prompt" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">This is a modal dialog</h4>
          </div>
          <div class="modal-body">
              <p>
                  You can only interact with elements that are inside this dialog.
                  To close it click a button or use the ESC key.
              </p>
              <form>
                <div class="form-group">
                  <label for="recipient-name" class="control-label">Recipient:</label>
                  <input type="text" class="form-control" id="recipient-name">
                </div>
                <div class="form-group">
                  <label for="message-text" class="control-label">Message:</label>
                  <textarea class="form-control" id="message-text"></textarea>
                </div>
              </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
          </div>
        </div><!-- /.modal-content --
      </div><!-- /.modal-dialog --
    </div><!-- /.modal --


    <!-- render blocking scripts --

    <!-- jQuery JS --
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!-- Bootstrap JS --
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- Main Script --
    <script src="js/global.js"></script>
	
	
	
	
	
	
	
	
	
	IS ANY OF THIS NEEDED??
-->	
</body>
</html>