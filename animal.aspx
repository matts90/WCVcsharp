<%@ Page Language="C#" AutoEventWireup="true" CodeFile="animal.aspx.cs" Inherits="animal" %>

<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>Animalcare Application</title>

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
						<a class="navbar-brand" href=""><img src="../484phpWork1/images/logo_short.png" alt="Wildlife Small Logo"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">
                            <li class="active"><a href="forms.aspx">Application</a></li>
                            <li><a href="forms.aspx">Back</a></li>
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
                    <section class="col-md-12">
					
						<!-- Main Section -->
					
                        <div class="main-section">
                            <div class="main-content panel panel-default">
                                <header class="panel-heading clearfix">
                                    <h2 class="panel-title">
                                        Wildlife Center of Virginia - Animal Care Application
                                    </h2>
                                </header>
                                <section class="panel-body container-fluid">
                                    <div class="leading">
										<form id="form" runat="server" enctype = "multipart/form-data"  class="form-horizontal panel panel-default" >
                                            <header class="panel-heading"><h2 class="panel-title">Basic Information</h2></header>
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label class="col-sm-2">First Name *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="firstName" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Last Name *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="lastName" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Create Password *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="password" type="password" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Confirm Password *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="check" type="password"  data-equals="password" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Email *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="email" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Phone *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="phone" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Age *</label>
                                                    <div class="col-sm-10">
														 <asp:TextBox 
                                                          runat="server" 
                                                          ID="age" 
                                                          required="required" 
                                                          CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
												<div class="form-group">
                                                    <label class="col-sm-2">Address *</label>
                                                    <div class="col-sm-10">
														<asp:TextBox runat="server" ID="address" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">City *</label>
                                                    <div class="col-sm-2">
														<asp:TextBox runat="server" ID="city" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>

                                                    <label class="col-sm-1">State *</label>
                                                    <div class="col-sm-3">
                                                      <asp:DropDownList 
                                                            ID="state" 
                                                            runat="server">
                                                            <asp:ListItem Value="Virginia"></asp:ListItem>
															<asp:ListItem Text="Alabama" Value="Alabama"></asp:ListItem>
															<asp:ListItem Text="Alaska" Value="Alaska"></asp:ListItem>
															<asp:ListItem Text="Arizona" Value="Arizona"></asp:ListItem>
															<asp:ListItem Text="Arkansas" Value="Arkansas"></asp:ListItem>
															<asp:ListItem Text="California" Value="California"></asp:ListItem>
															<asp:ListItem Text="Colorado" Value="Colorado"></asp:ListItem>
															<asp:ListItem Text="Connecticut" Value="Connecticut"></asp:ListItem>
															<asp:ListItem Text="Delaware" Value="Delaware"></asp:ListItem>
															<asp:ListItem Text="Florida" Value="Florida"></asp:ListItem>
															<asp:ListItem Text="Georgia" Value="Georgia"></asp:ListItem>
															<asp:ListItem Text="Hawaii" Value="Hawaii"></asp:ListItem>
															<asp:ListItem Text="Idaho" Value="Idaho"></asp:ListItem>
															<asp:ListItem Text="Illinois" Value="Illinois"></asp:ListItem>
															<asp:ListItem Text="Indiana" Value="Indiana"></asp:ListItem>
															<asp:ListItem Text="Iowa" Value="Iowa"></asp:ListItem>
															<asp:ListItem Text="Kansas" Value="Kansas"></asp:ListItem>
															<asp:ListItem Text="Kentucky" Value="Kentucky"></asp:ListItem>
															<asp:ListItem Text="Louisiana" Value="Louisiana"></asp:ListItem>
															<asp:ListItem Text="Maine" Value="Maine"></asp:ListItem>
															<asp:ListItem Text="Maryland" Value="Maryland"></asp:ListItem>
															<asp:ListItem Text="Massachusetts" Value="Massachusetts"></asp:ListItem>
															<asp:ListItem Text="Michigan" Value="Michigan"></asp:ListItem>
															<asp:ListItem Text="Minnesota" Value="Minnesota"></asp:ListItem>
															<asp:ListItem Text="Mississippi" Value="Mississippi"></asp:ListItem>
															<asp:ListItem Text="Missouri" Value="Missouri"></asp:ListItem>
															<asp:ListItem Text="Montana" Value="Montana"></asp:ListItem>
															<asp:ListItem Text="Nebraska" Value="Nebraska"></asp:ListItem>
															<asp:ListItem Text="Nevada" Value="Nevada"></asp:ListItem>
															<asp:ListItem Text="New Hampshire" Value="New Hampshire"></asp:ListItem>
															<asp:ListItem Text="New Jersey" Value="New Jersey"></asp:ListItem>
															<asp:ListItem Text="New Mexico" Value="New Mexico"></asp:ListItem>
															<asp:ListItem Text="New York" Value="New York"></asp:ListItem>
															<asp:ListItem Text="North Carolina" Value="North Carolina"></asp:ListItem>
															<asp:ListItem Text="North Dakota" Value="North Dakota"></asp:ListItem>
															<asp:ListItem Text="Ohio" Value="Ohio"></asp:ListItem>
															<asp:ListItem Text="Oklahoma" Value="Oklahoma"></asp:ListItem>
															<asp:ListItem Text="Oregon" Value="Oregon"></asp:ListItem>
															<asp:ListItem Text="Pennsylvania" Value="Pennsylvania"></asp:ListItem>
															<asp:ListItem Text="Rhode Island" Value="Rhode Island"></asp:ListItem>
															<asp:ListItem Text="South Carolina" Value="South Carolina"></asp:ListItem>
															<asp:ListItem Text="South Dakota" Value="South Dakota"></asp:ListItem>
															<asp:ListItem Text="Tennessee" Value="Tennessee"></asp:ListItem>
															<asp:ListItem Text="Texas" Value="Texas"></asp:ListItem>
															<asp:ListItem Text="Utah" Value="Utah"></asp:ListItem>
															<asp:ListItem Text="Vermont" Value="Vermont"></asp:ListItem>
															<asp:ListItem Text="Washington" Value="Washington"></asp:ListItem>
															<asp:ListItem Text="West Virginia" Value="West Virginia"></asp:ListItem>
															<asp:ListItem Text="Wisconsin" Value="Wisconsin"></asp:ListItem>
															<asp:ListItem Text="Wyoming" Value="Wyoming"></asp:ListItem>
														
                                                        </asp:DropDownList>
                                                    </div>
                                            
                                                    <label class="col-sm-2">Zip Code *</label>
                                                    <div class="col-sm-2">
														<asp:TextBox runat="server" ID="zip" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
												<div class="form-group">
													<label class="col-sm-2">Date of Birth *</label>
													<div class="col-sm-10">
														<asp:DropDownList 
                                                            id="month"
                                                            runat="server">

                                                            			
															<asp:ListItem value="01"></asp:ListItem>
															<asp:ListItem value="02"></asp:ListItem>
															<asp:ListItem value="03"></asp:ListItem>
															<asp:ListItem value="04"></asp:ListItem>
															<asp:ListItem value="05"></asp:ListItem>
															<asp:ListItem value="06"></asp:ListItem>
															<asp:ListItem value="07"></asp:ListItem>
															<asp:ListItem value="08"></asp:ListItem>
															<asp:ListItem value="09"></asp:ListItem>
															<asp:ListItem value="10"></asp:ListItem>
															<asp:ListItem value="11"></asp:ListItem>
															<asp:ListItem value="12"></asp:ListItem>



                                                        </asp:DropDownList>



                                                        <asp:DropDownList 
                                                            id="day"
                                                            runat="server">

														
														
																			
															<asp:ListItem value="01"></asp:ListItem>
															<asp:ListItem value="02"></asp:ListItem>
															<asp:ListItem value="03"></asp:ListItem>
															<asp:ListItem value="04"></asp:ListItem>
															<asp:ListItem value="05"></asp:ListItem>
															<asp:ListItem value="06"></asp:ListItem>
															<asp:ListItem value="07"></asp:ListItem>
															<asp:ListItem value="08"></asp:ListItem>
															<asp:ListItem value="09"></asp:ListItem>
															<asp:ListItem value="10"></asp:ListItem>
															<asp:ListItem value="11"></asp:ListItem>
															<asp:ListItem value="12"></asp:ListItem>
															<asp:ListItem value="13"></asp:ListItem>
															<asp:ListItem value="14"></asp:ListItem>
															<asp:ListItem value="15"></asp:ListItem>
															<asp:ListItem value="16"></asp:ListItem>
															<asp:ListItem value="17"></asp:ListItem>
															<asp:ListItem value="18"></asp:ListItem>
															<asp:ListItem value="19"></asp:ListItem>
															<asp:ListItem value="20"></asp:ListItem>
															<asp:ListItem value="21"></asp:ListItem>
															<asp:ListItem value="22"></asp:ListItem>
															<asp:ListItem value="23"></asp:ListItem>
															<asp:ListItem value="24"></asp:ListItem>
															<asp:ListItem value="25"></asp:ListItem>
															<asp:ListItem value="26"></asp:ListItem>
															<asp:ListItem value="27"></asp:ListItem>
															<asp:ListItem value="28"></asp:ListItem>
															<asp:ListItem value="29"></asp:ListItem>
															<asp:ListItem value="30"></asp:ListItem>
															<asp:ListItem value="31"></asp:ListItem>


                                                            </asp:DropDownList>
														
                                                        
                                                        <asp:DropDownList
                                                            id="year"
                                                            runat="server"
                                                            >





                                                        
														
																									
															<asp:ListItem value="1999"></asp:ListItem>
															<asp:ListItem value="1998"></asp:ListItem>
															<asp:ListItem value="1997"></asp:ListItem>
															<asp:ListItem value="1996"></asp:ListItem>
															<asp:ListItem value="1995"></asp:ListItem>
															<asp:ListItem value="1994"></asp:ListItem>
															<asp:ListItem value="1993"></asp:ListItem>
															<asp:ListItem value="1992"></asp:ListItem>
															<asp:ListItem value="1991"></asp:ListItem>
															<asp:ListItem value="1990"></asp:ListItem>
															<asp:ListItem value="1989"></asp:ListItem>
															<asp:ListItem value="1988"></asp:ListItem>
															<asp:ListItem value="1987"></asp:ListItem>
															<asp:ListItem value="1986"></asp:ListItem>
															<asp:ListItem value="1985"></asp:ListItem>
															<asp:ListItem value="1984"></asp:ListItem>
															<asp:ListItem value="1983"></asp:ListItem>
															<asp:ListItem value="1982"></asp:ListItem>
															<asp:ListItem value="1981"></asp:ListItem>
															<asp:ListItem value="1980"></asp:ListItem>
															<asp:ListItem value="1979"></asp:ListItem>
															<asp:ListItem value="1978"></asp:ListItem>
															<asp:ListItem value="1977"></asp:ListItem>
															<asp:ListItem value="1976"></asp:ListItem>
															<asp:ListItem value="1975"></asp:ListItem>
															<asp:ListItem value="1974"></asp:ListItem>
															<asp:ListItem value="1973"></asp:ListItem>
															<asp:ListItem value="1972"></asp:ListItem>
															<asp:ListItem value="1971"></asp:ListItem>
															<asp:ListItem value="1970"></asp:ListItem>
															<asp:ListItem value="1969"></asp:ListItem>
															<asp:ListItem value="1968"></asp:ListItem>
															<asp:ListItem value="1967"></asp:ListItem>
															<asp:ListItem value="1966"></asp:ListItem>
															<asp:ListItem value="1965"></asp:ListItem>
															<asp:ListItem value="1964"></asp:ListItem>
															<asp:ListItem value="1963"></asp:ListItem>
															<asp:ListItem value="1962"></asp:ListItem>
															<asp:ListItem value="1961"></asp:ListItem>
															<asp:ListItem value="1960"></asp:ListItem>
															<asp:ListItem value="1959"></asp:ListItem>
															<asp:ListItem value="1958"></asp:ListItem>
															<asp:ListItem value="1957"></asp:ListItem>
															<asp:ListItem value="1956"></asp:ListItem>
															<asp:ListItem value="1955"></asp:ListItem>
															<asp:ListItem value="1954"></asp:ListItem>
															<asp:ListItem value="1953"></asp:ListItem>
															<asp:ListItem value="1952"></asp:ListItem>
															<asp:ListItem value="1951"></asp:ListItem>
															<asp:ListItem value="1950"></asp:ListItem>
															<asp:ListItem value="1949"></asp:ListItem>
															<asp:ListItem value="1948"></asp:ListItem>
															<asp:ListItem value="1947"></asp:ListItem>
														</asp:DropDownList>
													</div>								
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you able to work All Year or Seasonal?</label>
													<div class="col-sm-7">
                                                        <asp:CheckBoxList 
                                                            ID="term" 
                                                            runat="server">

                                                            <asp:ListItem Text="Year" Value="Y"></asp:ListItem>
                                                            <asp:ListItem Text="Seasonal" Value="S"></asp:ListItem>
                                                            


                                                        </asp:CheckBoxList>
														
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2">Availability *</label>
													<asp:CheckBoxList 
                                                                ID="availability" 
                                                                runat="server" >

                                                            <asp:ListItem Text="Sunday" Value="Sunday"></asp:ListItem>
                                                            <asp:ListItem Text="Monday" Value="Monday"></asp:ListItem>
                                                            <asp:ListItem Text="Tuesday" Value="Tuesday"></asp:ListItem>
                                                            <asp:ListItem Text="Wednesday" Value="Wednesday"></asp:ListItem>
                                                            <asp:ListItem Text="Thursday" Value="Thursday"></asp:ListItem>
                                                            <asp:ListItem Text="Friday" Value="Friday"></asp:ListItem>
                                                            <asp:ListItem Text="Saturday" Value="Saturday"></asp:ListItem>


                                                            </asp:CheckBoxList>
                                                    
                                                   
												</div>
												
												<h4>Please answer the following questions.</h4>
												
												<div class="form-group">
													<label class="col-sm-3">Do you have a permit to rehabilitate wildlife in the state of Virginia?</label>
													<div class="col-sm-7">
                                                        <asp:CheckBoxList 
                                                                ID="CheckBoxList1" 
                                                                runat="server" >

                                                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value="No"></asp:ListItem>

                                                            </asp:CheckBoxList>
														
													</div>
													
												</div>
												<div class="form-group">
													<label class="col-sm-3">If so, what category? Please upload a copy of your permit.</label>
														<div>
                                                            <asp:DropDownList 
                                                                ID="permitCategory" 
                                                                runat="server">

                                                                <asp:ListItem value="1">1</asp:ListItem>
                                                                <asp:ListItem value="2">2</asp:ListItem>
                                                                <asp:ListItem value="4">4</asp:ListItem>




                                                            </asp:DropDownList>
												
														</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Are you rabies vaccinated?</label>
													<div class="col-sm-7">
														<<asp:CheckBoxList 
                                                                ID="rabies" 
                                                                runat="server" >

                                                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value="No"></asp:ListItem>

                                                            </asp:CheckBoxList>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">If so, how recently? Please provide proof of vaccination. Upload an attachment.</label>
														<div>
															<asp:DropDownList
                                                            id="vaccinationMonth"
                                                            runat="server"
                                                            >
															
															<asp:ListItem value="01">January</asp:ListItem>
															<asp:ListItem value="02">February</asp:ListItem>
															<asp:ListItem value="03">March</asp:ListItem>
															<asp:ListItem value="04">April</asp:ListItem>
															<asp:ListItem value="05">May</asp:ListItem>
															<asp:ListItem value="06">June</asp:ListItem>
															<asp:ListItem value="07">July</asp:ListItem>
															<asp:ListItem value="08">August</asp:ListItem>
															<asp:ListItem value="09">September</asp:ListItem>
															<asp:ListItem value="10">October</asp:ListItem>
															<asp:ListItem value="11">November</asp:ListItem>
															<asp:ListItem value="12">December</asp:ListItem>
														
                                                            </asp:DropDownList>

														<asp:DropDownList
                                                            id="vaccinationDay"
                                                            runat="server"
                                                            >
															
															<asp:ListItem value="01">1</asp:ListItem>
															<asp:ListItem value="02">2</asp:ListItem>
															<asp:ListItem value="03">3</asp:ListItem>
															<asp:ListItem value="04">4</asp:ListItem>
															<asp:ListItem value="05">5</asp:ListItem>
															<asp:ListItem value="06">6</asp:ListItem>
															<asp:ListItem value="07">7</asp:ListItem>
															<asp:ListItem value="08">8</asp:ListItem>
															<asp:ListItem value="09">9</asp:ListItem>
															<asp:ListItem value="10">10</asp:ListItem>
															<asp:ListItem value="11">11</asp:ListItem>
															<asp:ListItem value="12">12</asp:ListItem>
															<asp:ListItem value="13">13</asp:ListItem>
															<asp:ListItem value="14">14</asp:ListItem>
															<asp:ListItem value="15">15</asp:ListItem>
															<asp:ListItem value="16">16</asp:ListItem>
															<asp:ListItem value="17">17</asp:ListItem>
															<asp:ListItem value="18">18</asp:ListItem>
															<asp:ListItem value="19">19</asp:ListItem>
															<asp:ListItem value="20">20</asp:ListItem>
															<asp:ListItem value="21">21</asp:ListItem>
															<asp:ListItem value="22">22</asp:ListItem>
															<asp:ListItem value="23">23</asp:ListItem>
															<asp:ListItem value="24">24</asp:ListItem>
															<asp:ListItem value="25">25</asp:ListItem>
															<asp:ListItem value="26">26</asp:ListItem>
															<asp:ListItem value="27">27</asp:ListItem>
															<asp:ListItem value="28">28</asp:ListItem>
															<asp:ListItem value="29">29</asp:ListItem>
															<asp:ListItem value="30">30</asp:ListItem>
															<asp:ListItem value="31">31</asp:ListItem>
														</asp:DropDownList>


														<asp:DropDownList
                                                            id="vaccinationYear"
                                                            runat="server"
                                                            >
															
															<asp:ListItem value="2017">2017</asp:ListItem>
															<asp:ListItem value="2016">2016</asp:ListItem>
															<asp:ListItem value="2015">2015</asp:ListItem>
															<asp:ListItem value="2014">2014</asp:ListItem>
															<asp:ListItem value="2013">2013</asp:ListItem>
															<asp:ListItem value="2012">2012</asp:ListItem>
															<asp:ListItem value="2011">2011</asp:ListItem>
															<asp:ListItem value="2010">2010</asp:ListItem>
															<asp:ListItem value="2009">2009</asp:ListItem>
															<asp:ListItem value="2008">2008</asp:ListItem>
															<asp:ListItem value="2007">2007</asp:ListItem>
															<asp:ListItem value="2006">2006</asp:ListItem>
															<asp:ListItem value="2005">2005</asp:ListItem>
															<asp:ListItem value="2004">2004</asp:ListItem>
															<asp:ListItem value="2003">2003</asp:ListItem>
															<asp:ListItem value="2002">2002</asp:ListItem>
															<asp:ListItem value="2001">2001</asp:ListItem>
															<asp:ListItem value="2000">2000</asp:ListItem>
															<asp:ListItem value="1999">1999</asp:ListItem>
															<asp:ListItem value="1998">1998</asp:ListItem>
															<asp:ListItem value="1997">1997</asp:ListItem>
															<asp:ListItem value="1996">1996</asp:ListItem>
															<asp:ListItem value="1995">1995</asp:ListItem>
															<asp:ListItem value="1994">1994</asp:ListItem>
															<asp:ListItem value="1993">1993</asp:ListItem>
															<asp:ListItem value="1992">1992</asp:ListItem>
															<asp:ListItem value="1991">1991</asp:ListItem>
														</asp:DropDownList>
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

                                                        <asp:RadioButtonList 
                                                                ID="pounds" 
                                                                runat="server">
                                                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                <asp:ListItem Text="No" Value="No"></asp:ListItem>


                                                            </asp:RadioButtonList>

														
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3">Do you have any allergies or physical limitations? If so, please explain.</label>
													<div class="col-sm-9">
														<asp:RadioButtonList 
                                                                ID="allergiesRadio" 
                                                                runat="server">
                                                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                <asp:ListItem Text="No" Value="No"></asp:ListItem>




                                                            </asp:RadioButtonList>

                                                        <asp:TextBox 
                                                            ID="allergiesWriteUp" 
                                                            runat="server">




                                                        </asp:TextBox>

														
													</div>
													<label class="col-sm-3">Wildlife rehabilitation requires daily outdoor work -- year-round and regardless of weather conditions. Are you able to work outside during all seasons? If not, what are your limitations?</label>
													<div class="col-sm-9">
														<asp:RadioButtonList 
                                                                ID="limitiations" 
                                                                runat="server">
                                                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                <asp:ListItem Text="No" Value="No"></asp:ListItem>


                                                            </asp:RadioButtonList>
                                                        
                                                        <asp:TextBox 
                                                            ID="limitationsWriteUp" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>

													</div>       
													<label class="col-sm-6">Please briefly describe your relevant hands-on experience with animals, if any. What did you enjoy about the experience? What did you dislike?</label>
													<div class="col-sm-6">
														<asp:TextBox 
                                                            ID="experience" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>
													</div>
													<label class="col-sm-6">Carnivorous patients are sometimes unable to eat food items whole due to their injuries; you may be required to cut and divide dead rodents, chicks, and fishes into smaller portions. Are you comfortable handling dead animals for this purpose?</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="deadAnimals" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>
														
													</div>
													<label class="col-sm-6">Prior to release from the Wildlife Center, many predatory birds are presented with live mice in order to evaluate their ability to capture prey in a controlled and measurable environment. What is your opinion on using live-prey for this purpose?</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="livePrey" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>

														
													</div>
													<label class="col-sm-6">Do you belong to any animal rights groups (PETA, The Humane Society, etc.)? If so, which ones?</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="groups" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>
														
													</div>
													<label class="col-sm-6">What do you hope to learn or accomplish by volunteering at the Wildlife Center of Virginia?</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="accomplish" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>

														
													</div>
													<label class="col-sm-6">Please describe an environmental or wildlife-based issue you feel passionately about, and why.</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="issue" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>
														
													</div>
													<label class="col-sm-6">Is there anything else that you’d like us to know about yourself or your experience?</label>
													<div class="col-sm-6">

                                                        <asp:TextBox 
                                                            ID="additionalInfo" 
                                                            runat="server"
                                                            mode="multiline"
                                                            class="form-control">




                                                        </asp:TextBox>

														
													</div>
													<div class="col-sm-12">Please upload a current resume.</div>
													<div class="fileinput fileinput-new btn-lg" data-provides="fileinput">
														<span class="btn btn-default btn-file">
															<input name="userfile" id = "userfile" type="file" multiple />
														</span>
														<span class="fileinput-filename"></span>
														<span class="fileinput-new"></span>
													</div>
												</div>
											</div>
                                            <footer class="panel-footer">
                                                <asp:Button ID="submit" runat="server" class="btn btn-primary" type="submit" Text="Submit" OnClick="btnSubmit
                                                    "></asp:Button>
                                                <asp:Button ID="reset" runat="server" class="btn btn-default" type="reset" Text="Reset" OnClick="btnReset"></asp:Button>
                                            </footer>
                                        </form>
									</div>
								</section>
							</div>

						</div>
						
						<!-- Main Section End -->

						<div id="push"></div>
					</section>
				</div>
			</div>
		</section>
		<footer>
			<div id="footer-inner" class="container">
				<div>
					<span class="pull-right" class="footer" > &copy; 2017. All rights reserved. Owl Team
				</div>
			</div>
		</footer>

<!--    	IS ANY OF THIS NEEDED??








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