﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="calendar.aspx.cs" Inherits="calendar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="695px">
        <head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>Wildlife Center of Virginia Volunteers</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 <!-- jQuery JS -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <script src="js/jquery-ui.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- Main Script -->
    <script src="js/global.js"></script>

    
    <script type="text/javascript" src="js/global.js"></script>

    <script type="text/javascript" src="calendarJavaScript.js"></script>
  	

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
                            <li class="action"></li>

                            <li><a href="profile.aspx">Profile</a></li>
                            <li class="active"><a href="calendar.aspx">Calendar</a></li>
                            <li><a href="index.aspx">Sign Out</a></li>
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

                            <div class="main-content panel panel-default">
                                <header class="panel-heading clearfix">
                                    
                                    <h2 class="panel-title col-sm-3">
                                        Calendar
                                    </h2>
                                                                                     <a href="#" class="btn btn-default pull-right col-sm-3" rel="#overlay">Reserve Shift<i class="fa fa-question-circle"></i></a>
                                </header>
                                <section class="panel-body">
                                    <div id='calendar'></div> 
<img src="images/schedulecalendar.png" class="img-responsive">
                                </section>
                            </div>
                          </div>
        
                      </section>

                <!-- Main Section End -->


            </div>
            <div id="push"></div>
        </section>
    </div>
    
    <footer>
        <div id="footer-inner" class="container">
            <div>
                <span class="pull-right" id="footer" > &copy; 2017. All rights reserved. Owl Team
            </div>
        </div>
    </footer>
    <!-- render blocking scripts -->

   <div id='Div1'></div>
</body>
    </asp:Panel>

</asp:Content>

