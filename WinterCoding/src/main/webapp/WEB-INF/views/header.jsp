<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
   <link rel="apple-touch-icon" sizes="76x76" href="/resources/assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="/resources/assets/img/favicon.png">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   
<title>WinterCoding</title>
   
   <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

     <!-- Bootstrap core CSS     -->
    <link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="/resources/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/resources/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="/resources/assets/css/font-awesome.css" rel = "stylesheet">
    <link href="/resources/assets/css/stylefont.css" rel="stylesheet">
    <link href="/resources/assets/css/themify-icons.css" rel="stylesheet">
     
     
  <!-- Custome CSS-->    
  <link href="/resources/demo/css/plugins/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
  
<div class="wrapper">
      <div class="sidebar" data-background-color="brown" data-active-color="danger">
       <!--
         Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
         Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
      -->
         <div class="logo">
                       <center><a href="${pageContext.servletContext.contextPath}/home">WinterCoding </a></center>
         </div>
         <div class="logo logo-mini">
            <a href="http://www.creative-tim.com" class="simple-text">
              WinterCoding KIMMOONSUNG
            </a>
         </div>
          <div class="sidebar-wrapper">
            <div class="user">
                   <div class="photo">
<!--                        <img src="resources/assets/img/faces/abcd.jpg" /> -->
                   </div>
                   <div class="info">
                       <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                                          <%=session.getAttribute("session_id") %>
                           <b class="caret"></b>
                       </a>
                       <div class="collapse" id="collapseExample">
                           <ul class="nav">
                               <li><a href="#profile">My Profile</a></li>
                               <li><a href="#settings">Settings</a></li>
                           </ul>
                       </div>
                   </div>
               </div>
               <ul class="nav">
        
                   <li>
                  <a href="${pageContext.servletContext.contextPath}/mypurchaseInfo">
                           <i class="ti-user"></i>
                           <p>
                            Todo List
                              <b class="caret"></b>
                           </p>
                       </a>
<!--                        <div class="collapse" id="formsExamples"> -->
<!--                            <ul class="nav"> -->
<!--                         <li><a href="/resources/examples/forms/regular.html">Regular Forms</a></li> -->
<!--                         <li><a href="/resources/examples/forms/extended.html">Extended Forms</a></li> -->
<!--                         <li><a href="/resources/examples/forms/validation.html">Validation Forms</a></li> -->
<!--                                <li><a href="/resources/examples/forms/wizard.html">Wizard</a></li> -->
<!--                            </ul> -->
<!--                        </div> -->
                   </li>
                   
                   <li>
                  <a href="${pageContext.servletContext.contextPath}/favorite">
                           <i class="ti-user"></i>
                           <p>
                          Todo Complete List
                              <b class="caret"></b>
                           </p>
                       </a>

                   </li>
                   
               </ul>
          </div>
       </div>

       <div class="main-panel">
         <nav class="navbar navbar-default">
               <div class="container-fluid">
               <div class="navbar-minimize">
                  <button id="minimizeSidebar" class="btn btn-fill btn-icon"><i class="ti-more-alt"></i></button>
               </div>
                   <div class="navbar-header">
                       <button type="button" class="navbar-toggle">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="icon-bar bar1"></span>
                           <span class="icon-bar bar2"></span>
                           <span class="icon-bar bar3"></span>
                       </button>
                       <a class="navbar-brand" href="/home">WinterCoding KIMMOONSUNG</a>
                   </div>
                   <div class="collapse navbar-collapse">
                  <form class="navbar-form navbar-left navbar-search-form" role="search">
                      <div class="input-group">
                                                  
                      </div>
                   </form>
                       <ul class="nav navbar-nav navbar-right"> 
                           <li>
                               <a href="${pageContext.servletContext.contextPath}/logout">
                                   <i class="ti-panel"></i>
                           <p>Logout</p>
                               </a>
                           </li>                                                                                 
                     <li>
                               <a href="#settings" class="btn-rotate">
                           <i class="ti-settings"></i>
                           
                               </a>
                           </li>
                       </ul>
                   </div>
               </div>
           </nav>
  