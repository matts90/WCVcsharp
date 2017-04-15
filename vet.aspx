<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vet.aspx.cs" Inherits="vet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link rel="stylesheet" media="screen" href="css/style.css" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                      <a class="navbar-brand" href=""><img src="../streamlined/images/logo_short.png" alt="Wildlife Small Logo"></a>
                    </div>
    
                  
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul id="main-nav" class="nav navbar-nav">
                            <li class="action">

                            <li class="active"><a href="forms.html">Application</a></li>
                            <li><a href="index.html">Sign Out</a></li>
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
    
                    <section class="col-md-12">
                        <div class="main-section">

                            <div class="main-content panel panel-default">
                                <header class="panel-heading clearfix">
                                    
                                    <h2 class="panel-title">
                                        Wildlife Center of Virginia - Application
                                    </h2>
                                </header>
                                <section class="panel-body container-fluid">

                                    <div class="leading">
                                    	  <form id="form" action="confirmation.html" class="form-horizontal panel panel-default">
                                            <header class="panel-heading"><h2 class="panel-title">Basic Information</h2></header>
            
                                            <fieldset class="panel-body">
                                                <div class="form-group">
                                                    <label class="col-sm-2">First Name *</label>
                                                    <div class="col-sm-10">
                                                     <asp:TextBox runat="server" ID="firstname" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Last Name *</label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="lastname" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Password *</label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="password" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2">Password check </label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="password2" required="required" CSSclass="form-control"></asp:TextBox>
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
                                                      <asp:TextBox runat="server" ID="age" required="required" CSSclass="form-control"></asp:TextBox>
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
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="city" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-sm-2">County *</label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="county" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                  <div class="form-group">
                                                    <label class="col-sm-2">State *</label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="state" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                  <div class="form-group">
                                                    <label class="col-sm-2">Zip Code *</label>
                                                    <div class="col-sm-10">
                                                      <asp:TextBox runat="server" ID="zip" required="required" CSSclass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
<div class="form-group">
                                                    <label class="col-sm-5">Do you have a permit to rehabilitate wildlife?</label>
                                                    <div class="col-sm-7">
                                                        <div class="checkbox">

                                                            Yes<label>
                                                                <input class="checkbox" type="checkbox"/>
                                                            </label>
                                                            No<label>
                                                                <input class="checkbox" type="checkbox"/>
                                                            </label>
=======
														<input type="radio" name="permit" value="Yes"> Yes
														<input type="radio" name="permit" value="No"> No


                                                        </div>
                                                    </div>
                                                </div>
<div class="form-group">
                                                    <label class="col-sm-5">Are you rabies vaccinated?</label>
                                                    <div class="col-sm-7">
                                                        <div class="checkbox">

                                                            Yes<label>
                                                                <input class="checkbox" type="checkbox"/>
                                                            </label>
                                                            No<label>
                                                                <input class="checkbox" type="checkbox"/>
                                                            </label>

                                                            <input type="radio" name="rabies" value="Yes"> Yes
															<input type="radio" name="rabies" value="No"> No

                                                        </div>
                                                    </div>
                                                </div>

<h4>Please answer the following questions.</h4>
                                                
<div class="form-group">
         <label class="col-sm-6">Do you have any allergies or physical limitations?</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>
 <label class="col-sm-6">Please describe your availability weekly and seasonally. The Wildlife Center of Virginia needs consistency in scheduling, and is open on weekends.</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>                            

         <label class="col-sm-6">Please describe any previous medical or veterinary training you have completed.</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>
                            
                            
         <label class="col-sm-6">The case load at the Center can be unpredictable and vary greatly depending on the time of year.  Please describe the work environment that you work best in including how you best retain information that is taught to you.</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>
                         

         <label class="col-sm-6">The Center admits many trauma cases.  In order for a patient to be released back into the wild it must be able to successfully survive on its own free of chronic pain.  Due to this, the Center does humanely euthanize patients that do not meet this standard.  Do you have experience with euthanasia and how does it affect you?</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>
                           
         <label class="col-sm-6">Taking care of animals is a messy job that requires all team members to clean out dirty crates, chop rats or mice for feeding to patients, and collect fecal samples for analysis for example.  Is this something that you foresee struggling with?</label>
                <div class="col-sm-6">
                <textarea class="form-control" rows="5" cols="90"></textarea>
                            </div>
                            </div>
 </div>
                                                                            
                                                
                                                
                                            
                                            </div>
                                        </div>
                                    </div>
                            
                                            </fieldset>
            
                                            <footer class="panel-footer">
                                                <button class="btn btn-primary" type="submit">Submit form</button>
                                                <button class="btn btn-default" type="reset">Reset</button>
                                            </footer>
                                        </form>
                                    </div>
                
    
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

    <!-- simple dialog -->
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
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- yes/no dialog -->
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
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- user input dialog -->
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
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->


    <!-- render blocking scripts -->

    <!-- jQuery JS -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- Main Script -->
    <script src="js/global.js"></script>
</body>
    </div>
    </form>
</body>
</html>
