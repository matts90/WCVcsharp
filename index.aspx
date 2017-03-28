<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="695px">
        <head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Wildlife Center of Virginia Volunteers</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!--Add Jquery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>





<link rel="stylesheet" media="screen" href="css/style.css" />

</head>
        <!--clock in form-->
<body>
    <div class="login-box main-content panel panel-default">
      <header class="panel-heading"><img src="../streamlined/images/logo_small.png" alt="Wildlife Logo"></header>
    	<section class="panel-body">
<form action="clockin.html" method="post" class="form-horizontal">
          <div class="form-group">
            <div class="col-sm-12">
              <input type="text" id="username"  class="form-control" value="" name="username" required="required" placeholder="Username" />
            </div>
          </div>
          <div class="form-group">
            <div class="form-inline">
              <button  class="btn btn-default col-sm-3 col-sm-offset-3" type="submit">Clock In</button>
              <button  class="btn btn-default" type="submit">Clock Out</button>
            </div>
          </div>
</form>
<!--end clock in form-->

<!--Log in Form-->
<div class="bs-example">
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Log in</a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
  <form id="form" action="profile.html" method="post" class="form-horizontal">
    			<div class="form-group">
    			  <div class="col-sm-12">
      				<input type="text" id="Text1"  class="form-control" value="" name="username" required="required" placeholder="Username" />
    				</div>
    			</div>
    			<div class="form-group">
    			  <div class="col-sm-12">
      				<input type="password" id="password" class="form-control" value="" name="password" required="required" placeholder="Password" />
      			</div>
    			</div>
    			<div class="form-group">
    			  <div class="col-sm-2 col-sm-offset-4">
      				<button class="btn btn-default" type="submit">Login</button>
      			</div>
      		</div>
</form>
<!--end log in form-->
                    
                    
                </div>
            </div>
        </div>

        <!--Transporter Form-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Transporter</a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    <form id="form1" action="transporter.html" method="post" class="form-horizontal">
    			<div class="form-group">
    			  <div class="col-sm-12">
      				<input type="text" id="Text2"  class="form-control" value="" name="username" required="required" placeholder="Username" />
    				</div>
    			</div>
    			<div class="form-group">
    			  <div class="col-sm-12">
      				<input type="number" id="hours" class="form-control" value="" name="password" required="required" placeholder="Hours" />
      			</div>
    			</div>
    			<div class="form-group">
    			  <div class="col-sm-12">
      				<input type="number" id="mileage" class="form-control" value="" name="password" required="required" placeholder="Mileage" />
      			</div>
    			</div>
          <div><a target="_blank" href="https://www.google.com/maps/place/Wildlife+Center+of+VA/@38.0392567,-78.9159496,17z/data=!3m1!4b1!4m5!3m4!1s0x89b3640efe4889c9:0xf47416d422aa90a9!8m2!3d38.0392567!4d-78.9137609">Click here to check how far you drove.</a></div>
          <br>
    			<div class="form-group">
    			  <div class="col-sm-2 col-sm-offset-4">
      				<button class="btn btn-default" type="submit">Submit</button>
      			</div>
      		</div>
</form>
  <!--end transporter form-->
                    
                    
                </div>
            </div>
        </div>
    <!--Apply Form-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Apply</a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                <form id="form2" action="forms.html" method="post" class="form-horizontal">
          <div class="form-group">
            <div class="col-sm-12">
              <input type="text" id="Text3"  class="form-control" value="" name="username" required="required" placeholder="Email Address" />
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-2 col-sm-offset-4">
              <button class="btn btn-default" type="submit">Apply</button>
            </div>
          </div>
</form>    
<!--end apply form-->
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>


    		
    		
    	</section>
    </div>
</body>
    </asp:Panel>

</asp:Content>

