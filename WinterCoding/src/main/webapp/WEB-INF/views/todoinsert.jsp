<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 기본기능 -->
<%@  taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 포멧 기능 (형식지정)-->
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 함수 기능 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WinterCoding</title>
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="resources/assets/css/paper-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/assets/css/demo.css" rel="stylesheet" />


<!--  Fonts and icons  -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="resources/assets/css/themify-icons.css" rel="stylesheet">

<!--materialize js-->
	<script type="text/javascript" src="resources/demo/js/materialize.js"></script>
<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	
	<script src="resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="resources/assets/js/bootstrap-table.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.min.js">
</script>

<script>
$(document).ready(function() {
    $("#btnFinish").click(function() {
    	alert("새로운 todo를 만들었습니다.");
        document.form2.submit();
    });
});
</script>
</head>


<body>
		<%@include file="header.jsp"%>
		 <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                  
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="header">
	                                <h4 class="title"> New Todo </h4>
	                            </div>
	                            <div class="content">
	                   		<form name="form2" method="post" action="${pageContext.servletContext.contextPath}/insertsuccess"  class="form-horizontal">
	                                    
	                                        <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Title : </label>
	                                            <div class="col-sm-10">
	                        						<input type="text" id= "title" name ="title" value="title" class="form-control" />
	                                            </div>
	                                        </div>
	                                    
	                                    
	                                    
	                                        <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Due date : </label>
	                                            <div class="col-sm-10">
	                                                <input type="date" id= "duedate" name="duedate" class = "form-control">
	                                            </div>
	                                        </div>
	                                    
	                                   
	                                    
    	                                    <div class="form-group has-success">
	                                            <label class="col-sm-2 control-label">Content : </label>
	                                            <div class="col-sm-10">
                                                    <textarea class="form-control" id = "content" name = "content" placeholder="Here can be your nice text" rows="3"></textarea>
	                                            </div>
    	                                    </div>
	                                    
	                                    <div align="right">
	                                      <button type="button" id ="btnFinish" class="btn btn-wd btn-success">
	                                            <span class="btn-label">
	                                                <i class="fa fa-check"></i>
	                                            </span>
	                                            finish
	                                      </button>
	                                    </div>
	                                    
	                                </form>
	                            </div>
	                        </div>  <!-- end card -->
	                    </div> <!-- end col-md-12 -->
	                </div> <!-- end row -->
	            </div>
		
</div>

</body>

<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	<script src="resources/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="resources/assets/js/jquery-ui.min.js" type="text/javascript"></script>

	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script src="resources/assets/js/demo.js"></script>

</html>