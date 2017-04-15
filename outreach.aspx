<%@ Page Language="C#" AutoEventWireup="true" CodeFile="outreach.aspx.cs" Inherits="outreach" %>


<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Wildlife Center of Virginia - Outreach Application</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<title>Outreach Application</title>
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
<<<<<<< HEAD


        <header>
=======
        
>>>>>>> origin/master
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href=""><img src="../images/logo_short.png" alt="Wildlife Small Logo"></a>
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
<<<<<<< HEAD
										<form 
                                            runat="server"
                                            method="post"
                                            class="form-horizontal panel panel-default" >
											<header class="panel-heading">
                                                <h2 class="panel-title">Basic Information</h2>
											</header>
=======
										<form id="form" runat="server" method="post" enctype = "multipart/form-data"  class="form-horizontal panel panel-default" >
											<header class="panel-heading"><h2 class="panel-title">Basic Information</h2></header>
			
>>>>>>> origin/master
											<fieldset class="panel-body">
												<div class="form-group">
													<label class="col-sm-2">First Name *</label>
													<div class="col-sm-10">
                                                        <asp:TextBox
                                                            runat="server"
                                                            ID="firstName"
                                                            required="required"
                                                            CSSclass="form-control">
                                                        </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Last Name *</label>
													<div class="col-sm-10">
                                                        <asp:TextBox
                                                            runat="server"
                                                            ID="lastName"
                                                            required="required"
                                                            CSSclass="form-control">
                                                        </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Create Password *</label>
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
													<label class="col-sm-2">Confirm Password *</label>
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
													<label class="col-sm-2">Email *</label>
													<div class="col-sm-10">
													  <asp:TextBox
                                                          runat="server"
                                                          ID="email"
                                                          required="required"
                                                          CSSclass="form-control">
													  </asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Phone *</label>
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
													<label class="col-sm-2">Address *</label>
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
													<label class="col-sm-2">City *</label>
													<div class="col-sm-2">
													  <asp:TextBox runat="server" ID="city" required="required" CSSclass="form-control"></asp:TextBox>
													</div>
													<label class="col-sm-1">State *</label>
													<div class="col-sm-3">
													
														
														<select id="state" name="D1">
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
													<label class="col-sm-2">Zip Code *</label>
													<div class="col-sm-2">
													  <asp:TextBox runat="server" ID="zip" required="required" CSSclass="form-control"></asp:TextBox>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Date of Birth *</label>
													<div class="col-sm-10">
														<select name="DOBMonth">
															<option>- Month -</option> 				<!-- Make required -->
															<option value="01">January</option>
															<option value="02">February</option>
															<option value="03">March</option>
															<option value="04">April</option>
															<option value="05">May</option>
															<option value="06">June</option>
															<option value="07">July</option>
															<option value="08">August</option>
															<option value="09">September</option>
															<option value="10">October</option>
															<option value="11">November</option>
															<option value="12">December</option>
														</select>
														<select name="DOBDay">
															<option>- Day -</option> 				<!-- Make required -->
															<option value="01">1</option>
															<option value="02">2</option>
															<option value="03">3</option>
															<option value="04">4</option>
															<option value="05">5</option>
															<option value="06">6</option>
															<option value="07">7</option>
															<option value="08">8</option>
															<option value="09">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select>
														<select name="DOBYear">
															<option> - Year - </option>										<!-- Make required -->
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
														</select>								<!-- Wanna have a date picker instead? or have it populate the drop downs? -->
													</div>								
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you able to work All Year or Seasonal?</label>
													<div class="col-sm-7">
														<div class="checkbox" >
                                                            <asp:RadioButton ID="RadioButton11" runat="server" GroupName="work" value="All Year" text="All Year" />
                                                        <br />
                                                        <asp:RadioButton ID="RadioButton12" runat="server" GroupName="work" value="Seasonal" text="Seasonal"  />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Availability *</label>
													<table style="width:10%">
														<tr>
															<td>Sundays</td>
                                                            <td><asp:CheckBox ID="CheckBox1" runat="server" value="Sunday"/></td>
														</tr>
														<tr>
															<td>Mondays</td>
                                                            <td><asp:CheckBox ID="CheckBox2" runat="server" value="Monday"/></td>
															</tr>
														<tr>
															<td>Tuesdays</td>
                                                            <td><asp:CheckBox ID="CheckBox3" runat="server" value="Tuesday"/></td>
															</tr>
														<tr>
															<td>Wednesdays</td>
                                                            <td><asp:CheckBox ID="CheckBox4" runat="server" value="Wednesday"/></td>
															</tr>
														<tr>
															<td>Thursdays</td>
                                                            <td><asp:CheckBox ID="CheckBox5" runat="server" value="Thursday"/></td>
															</tr>
														<tr>
															<td>Fridays</td>
                                                            <td><asp:CheckBox ID="CheckBox6" runat="server" value="Friday"/></td>
															</tr>
														<tr>
															<td>Saturdays</td>
                                                            <td><asp:CheckBox ID="CheckBox7" runat="server" value="Saturday"/></td>
															</tr>
													</table>
												</div>
												
												<h4>Please answer the following questions.</h4>
												
												<div class="form-group">
													<label class="col-sm-3">Do you have a permit to rehabilitate wildlife in the state of Virginia?</label>
													<div class="col-sm-7">
														<div class="checkbox" >
                                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="permit" value="Yes" text="Yes" />
                                                            <br />
                                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="permit" value="No" text="No"  />
														</div>
													</div>
													
												</div>
												<div class="form-group">
													<label class="col-sm-3">If so, what category? Please upload a copy of your permit.</label>
														<div>
															<select name="permitCategory">
																<option name="permitCategory" value="">--</option>
																<option name="permitCategory" value="1">1</option>
																<option name="permitCategory" value="2">2</option>
																<option name="permitCategory" value="4">4</option>
															</select>
														</div>
														<div class="fileinput fileinput-new" data-provides="fileinput">
															<span class="btn btn-default btn-file">
																<input name="permitRehabVA" id = "permitRehabVA" type="file" multiple /></span>
															<span class="fileinput-filename"></span>
															<span class="fileinput-new"></span>
														</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you rabies vaccinated?</label>
													<div class="col-sm-7">
														<div class="checkbox">
                                                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rabies" value="Yes" text="Yes" />
                                                            <br />
                                                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rabies" value="No" text="No"  />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">If so, how recently? Please provide proof of vaccination. Upload an attachment.</label>
														<div>
															<select name="VacMonth">
																<option>- Month -</option>
																<option value="01">January</option>
																<option value="02">February</option>
																<option value="03">March</option>
																<option value="04">April</option>
																<option value="05">May</option>
																<option value="06">June</option>
																<option value="07">July</option>
																<option value="08">August</option>
																<option value="09">September</option>
																<option value="10">October</option>
																<option value="11">November</option>
																<option value="12">December</option>
															</select>
															<select name="VacDay">
																<option>- Day -</option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option>
															</select>
															<select name="VacYear">
																<option> - Year - </option>
																<option value="2017">2017</option>
																<option value="2016">2016</option>
																<option value="2015">2015</option>
																<option value="2014">2014</option>
																<option value="2013">2013</option>
																<option value="2012">2012</option>
																<option value="2011">2011</option>
																<option value="2010">2010</option>
																<option value="2009">2009</option>
																<option value="2008">2008</option>
																<option value="2007">2007</option>
																<option value="2006">2006</option>
																<option value="2005">2005</option>
																<option value="2004">2004</option>
																<option value="2003">2003</option>
																<option value="2002">2002</option>
																<option value="2001">2001</option>
																<option value="2000">2000</option>
																<option value="1999">1999</option>
																<option value="1998">1998</option>
																<option value="1997">1997</option>
																<option value="1996">1996</option>
																<option value="1995">1995</option>
																<option value="1994">1994</option>
																<option value="1993">1993</option>
																<option value="1992">1992</option>
																<option value="1991">1991</option>
															</select>								<!-- Wanna have a date picker instead? or have it populate the drop downs? -->
														</div>
														<div class="fileinput fileinput-new" data-provides="fileinput">
															<span class="btn btn-default btn-file">
																<input name="rabbiesDocumentation" id = "rabbiesDocumentation" type="file" multiple /></span>
															<span class="fileinput-filename"></span>
															<span class="fileinput-new"></span>
														</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you able to lift 40 lbs?</label>
													<div class="col-sm-7">
														<div class="checkbox">
                                                            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="fortyLBS" value="Yes" text="Yes" />
                                                            <br />
                                                            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="fortyLBS" value="No" text="No"  />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Do you have any allergies or physical limitations? If so, please explain.</label>
													<div class="col-sm-9">
                                                        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="limitationsASN" value="Yes" text="Yes" />
                                                            <br />
                                                            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="limitationsASN" value="No" text="No"  />
														<textarea class="form-control" id = 'allergies' name = 'allergies' rows="5" cols="90"></textarea>
													</div>
													<label class="col-sm-3">A volunteer may be required to perform outdoor work -- year-round and regardless of weather conditions. Are you able to work outside during all seasons? If not, what are your limitations?</label>
													<div class="col-sm-9">
                                                        <asp:RadioButton ID="RadioButton9" runat="server" GroupName="limitationsWO" value="Yes" text="Yes" />
                                                        <br />
                                                        <asp:RadioButton ID="RadioButton10" runat="server" GroupName="limitationsWO" value="No" text="No"  />
														<textarea class="form-control" id = 'outside' name = 'outside' rows="5" cols="90"></textarea>
													</div>
													<label class="col-sm-3">Why are you interested in volunteering as an outreach docent?</label>
													<div class="col-sm-9">
														<textarea class="form-control" id = 'whyInterested' name = 'whyInterested' rows="5" cols="90"></textarea>
													</div>
													<label class="col-sm-3">What’s an environmental or wildlife issue you feel passionately about, and why?</label>
													<div class="col-sm-9">
														<textarea class="form-control" id = 'wildlifeIssue' name = 'wildlifeIssue' rows="5" cols="90"></textarea>
													</div>
													<label class="col-sm-3">Do you have prior experience speaking to the public? Please describe.</label>
													<div class="col-sm-9">
														<textarea class="form-control" id = 'priorExperience' name ='priorExperience' rows="5" cols="90"></textarea>
													</div>
													<label class="col-sm-3">Do you belong to any animal rights groups (PETA, The Humane Society, etc.)? If so, which ones? </label>
													<div class="col-sm-9">
														<textarea class="form-control" id = 'animalRightsGroup' name ='animalRightsGroup' rows="5" cols="90"></textarea>
													</div>                  
													<label class="col-sm-3">What do you think you’d bring to the outreach volunteer team?</label>
													<div class="col-sm-9">
														<textarea class="form-control" id = 'valueAdded' name = 'valueAdded' rows="5" cols="90"></textarea>
													</div>
													<div class="col-sm-12 col-sm-offset-3">Please upload a current resume.</div>
													<div class="fileinput fileinput-new" data-provides="fileinput">
															<span class="btn btn-default btn-file">
																<input name="userFile" id = "userFile" type="file" multiple /></span>
															<span class="fileinput-filename"></span>
															<span class="fileinput-new"></span>
														</div>
												</div>
											</fieldset>
											<footer class="panel-footer">
<<<<<<< HEAD
                                                <asp:Button ID="Button1" runat="server" Text="Submit form" class="btn btn-default"/>
                                                <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-default"/>
=======
												
												<asp:Button ID="submit" runat="server" class="btn btn-default" type="submit" Text="Upload" Onclick="btnSubmit"></asp:Button>
>>>>>>> origin/master
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
                <span class="pull-right" class="footer" > &copy; 2017. All rights reserved. Owl Team
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