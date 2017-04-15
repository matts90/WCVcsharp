<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>


            <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>


<title>Wildlife Center of Virginia Volunteers</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"/></script>

<!--Add Jquery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" media="screen" href="css/style.css" />

</head>
        <!--clock in form-->
<body>
    <div class="login-box main-content panel panel-default">
        <header class="panel-heading"><img src="../images/logo_small.png" alt="Wildlife Logo"/></header>
    	<section class="panel-body">
            <form
                method="post"
                class="form-horizontal"
                runat="server">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:TextBox
                            runat="server"
                            ID="username" 
                            placeholder="Username"
                            
                            CSSclass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                     <div class="form-inline">
                        <asp:Button ID="btnClockIn"
                            runat="server"
                            class="btn btn-default col-sm-3 col-sm-offset-3"
                            type="submit"
                            Text="Clock In"
                            OnClick="btnClockIn_Click">
                        </asp:Button>
                        <asp:Button ID="btnClockOut"
                            runat="server"
                            class="btn btn-default"
                            type="submit"
                            Text="Clock Out"
                            OnClick="btnClockOut_Click">
                        </asp:Button>
                    </div>
                </div>

                <div class="bs-example">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Transporter</a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
    			                    <div class="form-group">
    			                      <div class="col-sm-12">
                                          <asp:TextBox runat="server"
                                              ID="usernameTransporter" 
                                              placeholder="Username"
                                              
                                              CSSclass="form-control">
                                          </asp:TextBox>
    				                    </div>
    			                    </div>
                                    <div class="form-group">
    			                        <div class="col-sm-12">
                                            <asp:TextBox
                                                runat="server"
                                                ID="dateTransporter" 
                                                placeholder="Date of Pickup (mm/dd/yyyy)"
                                                
                                                CSSclass="form-control">
                                            </asp:TextBox>
    				                    </div>
    			                    </div>
                                    <div class="form-group">
    			                        <div class="col-sm-12">
                                            <asp:TextBox
                                                runat="server"
                                                ID="address" 
                                                placeholder="Pick up Address"
                                                
                                                CSSclass="form-control">
                                            </asp:TextBox>
    				                    </div>
    			                    </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <asp:TextBox
                                            runat="server"
                                            ID="species" 
                                            placeholder="Animal Species"
                                            
                                            CSSclass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
    			                <div class="form-group">
    			                    <div class="col-sm-12">
                                        <asp:TextBox
                                            runat="server"
                                            ID="hours" 
                                            placeholder="Hours"
                                            
                                            CSSclass="form-control">
                                        </asp:TextBox>
      			                    </div>
    			                </div>
    			                <div class="form-group">
    			                    <div class="col-sm-12">
                                        <asp:TextBox
                                            runat="server"
                                            ID="mileage" 
                                            placeholder="Mileage"
                                            
                                            CSSclass="form-control">
                                        </asp:TextBox>
      			                    </div>
    			                </div>
                                <div>
                                    <a target="_blank" href="https://www.google.com/maps/dir///Wildlife+Center+of+VA,+South+Delphine+Avenue,+Waynesboro,+VA//@38.0808252,-78.9864842,13z/data=!4m11!4m10!1m0!1m0!1m5!1m1!1s0x89b3640efe4889c9:0xf47416d422aa90a9!2m2!1d-78.9137609!2d38.0392567!1m0!3e0">Click here to check how far you drove.</a></div>
    			                <div class="form-group">
    			                    <div class="col-sm-2 col-sm-offset-4">
      				                    <asp:Button 
                                           ID="Transporter"
                                           runat="server"
                                           class="btn btn-default"
                                           type="submit"
                                           Text="Submit"
                                           OnClick="btnTransporter_Click">
      				                    </asp:Button>
      			                    </div>
      		                    </div>
                            </div>
                        </div>
                    </div>
		            <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Log in</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
    			                <div class="form-group">
    			                    <div class="col-sm-12">
      				                <asp:TextBox
                                          type="text"
                                          id="Text2" 
                                          class="form-control"
                                          name="username"
                                          
                                          placeholder="Username"
                                          runat="server">
                                        </asp:TextBox>
    				                </div>
    			                </div>
    			                <div class="form-group">
    			                    <div class="col-sm-12">
      				                <asp:TextBox
                                          type="password"
                                          id="password"
                                          class="form-control"
                                          name="password"
                                          
                                          placeholder="Password"
                                          runat="server">
                                        </asp:TextBox>
      			                    </div>
                                     ID="TextBox1" runat="server"></asp:TextBox>
    			                </div>
    			                <div class="form-group">
    			                    <div class="col-sm-2 col-sm-offset-4">
      				                    <button
                                              class="btn btn-default"
                                              type="submit">
                                              Login
      				                    </button>
      			                    </div>
      		                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Apply</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <asp:TextBox
                                            type="text"
                                            id="Text3" 
                                            class="form-control"
                                            value=""
                                            name="username"
                                            placeholder="Email Address" 
                                            runat="server">
                                        </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-4">
                                            <asp:Button
                                                ID="btnEmail"
                                                class="btn btn-default"
                                                runat="server"
                                                Text="Apply"
                                                OnClick="btnEmail_Click" 
                                                />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    	</section>
    </div>
</body>
</html>
