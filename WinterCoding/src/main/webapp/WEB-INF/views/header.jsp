<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
   <link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="resources/assets/img/favicon.png">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   
<title>WinterCoding</title>
   
   <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

     <!-- Bootstrap core CSS     -->
    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="resources/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="resources/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="resources/assets/css/font-awesome.css" rel = "stylesheet">
    <link href="resources/assets/css/stylefont.css" rel="stylesheet">
    <link href="resources/assets/css/themify-icons.css" rel="stylesheet">
     
     
  <!-- Custome CSS-->    
  <link href="resources/demo/css/plugins/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
  
<div class="wrapper">
      <div class="sidebar" data-background-color="brown" data-active-color="danger">
       
         <div class="logo">
                       <center><a href="${pageContext.servletContext.contextPath}/home">WinterCoding </a></center>
         </div>
            <a href="${pageContext.servletContext.contextPath}/home" >
              WinterCoding 
            </a>
         
          <div class="sidebar-wrapper">
            <div class="user">
                   <div class="photo">
<!--                        <img src="resources/assets/img/faces/abcd.jpg" /> -->
                   </div>
                   <div class="info">
                       <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                           <b class="caret"></b>
                       </a>
                   </div>
               </div>
               <ul class="nav">
        
                   <li>
                  <a href="${pageContext.servletContext.contextPath}/home">
                           <i class="ti-clipboard"></i>
                           <p>
                            Todo List
                              <b class="caret"></b>
                           </p>
                       </a>

                   </li>
                   
                   <li>
                  <a href="${pageContext.servletContext.contextPath}/completedlist">
                           <i class="ti-clipboard"></i>
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
               
                   <div class="navbar-header">
                       <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/home">WinterCoding KIMMOONSUNG</a>
                   </div>
                   <div class="collapse navbar-collapse">
                  <form class="navbar-form navbar-left navbar-search-form" role="search">
                      <div class="input-group">
                                                  
                      </div>
                   </form>
                       <ul class="nav navbar-nav navbar-right"> 
                                                                                                    
                       </ul>
                   </div>
               </div>
           </nav>
  