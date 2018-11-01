<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 기본기능 -->
<%@  taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 포멧 기능 (형식지정)-->
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 함수 기능 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>WinterCoding</title>
<link rel="apple-touch-icon" sizes="76x76"
	href="/resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="/resources/assets/css/paper-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="/resources/assets/css/demo.css" rel="stylesheet" />


<!--  Fonts and icons  -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="/resources/assets/css/themify-icons.css" rel="stylesheet">

<!--materialize js-->
	<script type="text/javascript" src="/resources/demo/js/materialize.js"></script>
<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	
	<script src="/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="/resources/assets/js/bootstrap-table.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.min.js">
</script>

</head>

<body>
		<%@include file="header.jsp"%>
		 <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-md-6">
	                        <div class="card">
							    <form method="#" action="#">
		                            <div class="header">
									    <h4 class="title">
											Stacked Form
										</h4>
									</div>
		                            <div class="content">
	                                    <div class="form-group">
	                                        <label>Email address</label>
	                                        <input type="email" placeholder="Enter email" class="form-control">
	                                    </div>
	                                    <div class="form-group">
	                                        <label>Password</label>
	                                        <input type="password" placeholder="Password" class="form-control">
	                                    </div>
	                                    <div class="form-group">
	                                        <label class="checkbox">
	                                            <input type="checkbox" data-toggle="checkbox" value="" checked>
	                                            Subscribe to newsletter
	                                        </label>
	                                    </div>
	                                    <button type="submit" class="btn btn-fill btn-info">Submit</button>
		                            </div>
							    </form>
	                        </div> <!-- end card -->
	                    </div> <!--  end col-md-6  -->
	                    <div class="col-md-6">
	                        <div class="card">
								<form class="form-horizontal">
		                            <div class="header">
										<h4 class="title">
											Horizontal Form
										</h4>
									</div>
		                            <div class="content">
										<div class="form-group">
		                                    <label class="col-md-3 control-label">Email</label>
		                                    <div class="col-md-9">
		                                        <input type="email" placeholder="Email" class="form-control">
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="col-md-3 control-label">Password</label>
		                                    <div class="col-md-9">
		                                        <input type="password" placeholder="Password" class="form-control">
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="col-md-3"></label>
		                                    <div class="col-md-9">
		                                        <label class="checkbox">
		                                            <input type="checkbox" data-toggle="checkbox" value="">
		                                            Remember Me
		                                        </label>
		                                    </div>
		                                </div>
									</div>
									<div class="card-footer">
										<div class="form-group">
											<label class="col-md-3"></label>
											<div class="col-md-9">
												<button type="submit" class="btn btn-fill btn-info">
													Sign in
												</button>
											</div>
										</div>
									</div>
								</form>
	                    	</div> <!-- end card -->
	                	</div> <!--  end col-md-6  -->
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="header">
	                                <h4 class="title">Form Elements</h4>
	                            </div>
	                            <div class="content">
	                                <form method="get" action="/" class="form-horizontal">
	                                    <fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">With help</label>
	                                            <div class="col-sm-10">
	                                                <input type="text" class="form-control">
	                                                <span class="help-block">A block of help text that breaks onto a new line.</span>
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Password</label>
	                                            <div class="col-sm-10">
	                                                <input type="password" name="password" class="form-control">
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Placeholder</label>
	                                            <div class="col-sm-10">
	                                                <input type="text" placeholder="placeholder" class="form-control">
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Disabled</label>
	                                            <div class="col-sm-10">
	                                                <input type="text" placeholder="Disabled input here..." disabled="" class="form-control">
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Static control</label>
	                                            <div class="col-sm-10">
	                                                <p class="form-control-static">hello@creative-tim.com</p>
	                                            </div>
	                                        </div>
	                                    </fieldset>

										<fieldset>
	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Checkboxes and radios</label>
	                                            <div class="col-sm-10">
	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" value="">First Checkbox
	                                                </label>

	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" value="">Second Checkbox
	                                                </label>

	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadios" value="option1" checked="">First Radio
	                                                </label>

	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadios" value="option2">Second Radio
	                                                </label>
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group">
	                                           <label class="col-sm-2 control-label">Inline checkboxes</label>
	                                           <div class="col-sm-10">
	                                                <label class="checkbox checkbox-inline">
	                                                    <input type="checkbox" data-toggle="checkbox" value="option1">a
	                                                </label>
	                                                <label class="checkbox checkbox-inline">
	                                                    <input type="checkbox" data-toggle="checkbox" value="option2">b
	                                                </label>
	                                                <label class="checkbox checkbox-inline">
	                                                    <input type="checkbox" data-toggle="checkbox" value="option3">c
	                                                </label>
	                                           </div>
	                                        </div>
	                                    </fieldset>

										<fieldset>
	                                        <legend>Input Variants</legend>

	                                        <div class="form-group">
	                                            <label class="col-sm-2 control-label">Custom Checkboxes &amp; radios</label>
	                                            <div class="col-sm-4 col-sm-offset-1">
	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" value="">
	                                                    Unchecked
	                                                </label>

	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" data-toggle="checkbox" value="" checked>
	                                                    Checked
	                                                </label>

	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" data-toggle="checkbox" value="" disabled>
	                                                    Disabled unchecked
	                                                </label>

	                                                <label class="checkbox">
	                                                    <input type="checkbox" data-toggle="checkbox" data-toggle="checkbox" value="" disabled checked>
	                                                    Disabled checked
	                                                </label>
	                                            </div>

	                                            <div class="col-sm-5">
	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadios2" value="">
	                                                    Radio is off
	                                                </label>
	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadios2"value="" checked>
	                                                    Radio is on
	                                                </label>

	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadiosDisabled2" value="" disabled>
	                                                    Disabled radio is off
	                                                </label>
	                                                <label class="radio">
	                                                    <input type="radio" data-toggle="radio" name="optionsRadiosDisabled2" value="" checked disabled>
	                                                    Disabled radio is on
	                                                </label>
	                                            </div>
	                                        </div>
	                                    </fieldset>

	                                    <fieldset>
	                                        <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Title : </label>
	                                            <div class="col-sm-10">
	                        						<input type="text" id= "title" name ="title" value="${vo.title}" class="form-control" />
	                                            </div>
	                                        </div>
	                                    </fieldset>
	                                    
	                                     <fieldset>
	                                       <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Due date : </label>
	                                            <div class="col-sm-10">
	                                                <input type="date" id= "duedate" name="duedate" value ="${vo.duedate}" class = "form-control">
	                                            </div>
	                                        </div>
	                                    </fieldset>
	                                    
	                                     <fieldset>
	                                        <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Content : </label>
	                                            <div class="col-sm-10">
                                                    <textarea class="form-control" id = "content" name = "content"  rows="3">${vo.content}</textarea>
	                                            </div>
    	                                    </div>
	                                    </fieldset>
	                                    
	                                </form>
	                            </div>
	                        </div>  <!-- end card -->
	                    </div> <!-- end col-md-12 -->
	                </div> <!-- end row -->
	            </div>
		
</div>
</body>

<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	<script src="/resources/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="/resources/assets/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Forms Validations Plugin -->
	<script src="/resources/assets/js/jquery.validate.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="/resources/assets/js/moment.min.js"></script>

	<!--  Date Time Picker Plugin is included in this js file -->
	<script src="/resources/assets/js/bootstrap-datetimepicker.js"></script>

	<!--  Select Picker Plugin -->
	<script src="/resources/assets/js/bootstrap-selectpicker.js"></script>

	<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
	<script src="/resources/assets/js/bootstrap-checkbox-radio-switch-tags.js"></script>

	<!-- Circle Percentage-chart -->
	<script src="/resources/assets/js/jquery.easypiechart.min.js"></script>

	<!--  Charts Plugin -->
	<script src="/resources/assets/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="/resources/assets/js/bootstrap-notify.js"></script>

	<!-- Sweet Alert 2 plugin -->
	<script src="/resources/assets/js/sweetalert2.js"></script>

	<!-- Vector Map plugin -->
	<script src="/resources/assets/js/jquery-jvectormap.js"></script>

	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Wizard Plugin    -->
	<script src="/resources/assets/js/jquery.bootstrap.wizard.min.js"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="/resources/assets/js/bootstrap-table.js"></script>

	<!--  Plugin for DataTables.net  -->
	<script src="/resources/assets/js/jquery.datatables.js"></script>

	<!--  Full Calendar Plugin    -->
	<script src="/resources/assets/js/fullcalendar.min.js"></script>

	<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="/resources/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script src="/resources/assets/js/demo.js"></script>



</html>