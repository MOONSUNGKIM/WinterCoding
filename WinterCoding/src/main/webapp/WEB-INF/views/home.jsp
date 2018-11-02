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

<!-- Detail PopUP창을 위해 필요한 css이다. (MODAL관련 css ) -->
<link rel="stylesheet" href="/resources/demo/css/msmodal.css" />

<!-- CORE CSS-->
<link href="/resources/demo/css/style.css" type="text/css"
	rel="stylesheet" media="screen,projection">
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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- finished Due date Alarm function -->

 <script langauge="javascript">
    window.onload=function() {
	    // 페이지가 로딩된 후 실행
	    var count = ${Todo.finisedTodoListKey.size()};
	    for(var i =0; i<count; i ++) {
// 	    demo.showNotification('top','center',${Todo.finisedTodoListKey.get(i).position});
	    demo.showNotification('top','center',i);
       }
	}
  </script>

<!--  -->

</head>
<style>
[v-cloak] {
	display: hidden;
}
</style>

<body>
	<%@include file="header.jsp"%>

	<div id="todo" v-cloak>

		<detail modal-class="media-manager-details" v-show="showDetailModal"
			@close="showDetailModal=false">
		<p></p>
		</detail>

		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="content">
								<div class="toolbar">
									<h4>TODO LIST VIEW</h4>
									<div align="right">
										<h4>
											<a href="${pageContext.servletContext.contextPath}/insert">
												<i class="ti-plus"> NEW </i>
											</a>
										</h4>
									</div>

									<!--Here you can write extra buttons/actions for the toolbar-->
								</div>
								<table id="bootstrap-table">

									<thead>

										<th data-field="position" data-sortable="true">Position</th>
										<th data-field="title">Title</th>
										<th data-field="duedate" data-sortable="true">Duedate</th>
										<th data-field="actions">State</th>
										<th data-field="actions" class="td-actions text-right">Actions</th>
									</thead>


									<tr v-for="(item,index) in items">

										<td @click="handleImageDetails(item)">{{item.position}}</td>
										<td @click="handleImageDetails(item)">{{item.title}}</td>
										<td @click="handleImageDetails(item)">{{item.duedate}}</td>
										<td @click="handleImageDetails(item)">{{item.complete}}</td>
										<td><a @click="handleImageDetails(item)"> <i
												class="ti-clipboard">&nbsp;Detail</i>
										</a> &nbsp;&nbsp; <a
											:href="'${pageContext.servletContext.contextPath}/update/'+item.no">
												<i class="ti-list">&nbsp;Update</i>
										</a> &nbsp;&nbsp; <a
											:href="'${pageContext.servletContext.contextPath}/delete/'+item.no+'/'+item.position">
												<i class="ti-minus">&nbsp;Delete</i>
										</a> &nbsp;&nbsp; <a
											:href="'${pageContext.servletContext.contextPath}/completechange/'+item.no+'/'+item.position">
												<i class="ti-panel">&nbsp;Complete</i>
										</a></td>
									</tr>

								</table>
                              		

							</div>
						</div>
						<!--  end card  -->
					</div>
					<!-- end col-md-12 -->
				</div>
				<!-- end row -->
			</div>
		</div>

							<div class="places-buttons">
	                            <div class="row">
	                                <div class="col-md-3">
	                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','center',1)">Top Center</button>
	                                </div>
	                            </div>
	                        </div>


	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.3.4/vue.js"></script>
	<script>
var bus = new Vue();

const app = new Vue({
    el: "#todo",
    data: {
      items : [],
      showDetailModal:false
    },  
    mounted: function() {
    	 <c:forEach var="vo" items="${Todo.TodoListKey}">// controller에서 List를 받아 foreach   
        this.items = this.items.concat ({
       	no : "${vo.no}",
        title : "${vo.title}",
       	position : "${vo.position}",
       	content : "${vo.content}",
       	complete : "${vo.complete}",
       	duedate : "${vo.duedate}"
        });
        </c:forEach>
   },
   methods:{
      handleImageDetails(item) {
      	this.showDetailModal=true;
    	this.items.title=item.title;
    	this.items.content=item.content;
    	this.items.position=item.position;
    	this.items.duedate=item.duedate;
    	
  	    bus.$emit('Transport', this.items);
      }
      
   },
   
   components:{
	   /* 'detail': child */
	   detail: {
	    	template: `
	    	
			<div class="modal is-active">
			  <div class="modal-background" style="bottom:0; left:0;position:absolute;right:0;top:0;background-color:rgba(10,10,10,.86)" @click="$emit('close')"></div>
			  <div class="modal-card" style="width:60%; height:80%">
			    <header class="modal-card-head">
			    <h2 style="color:787878;"><strong> Title : </strong> {{title}} <hr> </h2>
			      <p class="modal-card-title"></p>
			      <button type="button" class="delete" aria-label="close" @click="$emit('close')"></button>
			    </header>
			   <!-- <section class="modal-card-body" style="width:50%; height:100%"> -->
			   <div class="modal-card-body" style="width:100%; height:100%;">
			      <!-- Content ... -->
				    <table style="width:90%;border:hidden;" valign="top" >
				    	<tr style="text-align:left;border:hidden">
							<td style="border:hidden;">
							    <p><h5><strong> now position : </strong></h5>{{position}}</p>
						        </p>
								<p><h5><strong> duedate : </strong></h5> {{duedate}}</p>
							</td>
						</tr>
						
						<tr style="text-align:left;border:hidden">
							<td style="border:hidden;">
							<hr><h5><strong>content : </strong><h5>
	                            <p>{{content}}</p>
							</td>
							
						</tr>
						
						<tr style="text-align:left;border:hidden">
							<td colspan="2" style="border:hidden;">
                        	
							</td>
						</tr>
					
					</table>
					<div align="right">
	                <button class="btn btn-wd" @click="$emit('close')">Confirm</button>
	                </div>	
				</div>
				
			    <footer class="modal-card-foot">
			    </footer>
			  </div>
			</div>
			
			`
	    	,	
	         created : function() { 
		        var self = this;
				bus.$on("Transport", function(list) { 
				    self.title = list.title;
					self.content=list.content;
					self.position = list.position;
					self.duedate = list.duedate;
				});
				
			} 
	}
	   
 }
   
});

</script>

</body>

<!--  Bootstrap Table Plugin    -->
<script src="/resources/assets/js/bootstrap-table.js"></script>

<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
<script src="/resources/assets/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="/resources/assets/js/jquery-ui.min.js"
	type="text/javascript"></script>
<script src="/resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
<script src="/resources/assets/js/paper-dashboard.js"></script>

<!--materialize js-->
<script type="text/javascript" src="/resources/demo/js/materialize.js"></script>


<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="/resources/assets/js/paper-dashboard.js"></script>

    <!--  -->
	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script src="/resources/assets/js/demo.js?v=<%=System.currentTimeMillis() %>"></script>
	<!-- 자바스크립트 파일 수정시 바로바로 수정 가능  -->
	<!-- http://zzznara2.tistory.com/689 -->
	<!--  -->
	
<!--  Notifications Plugin    -->
	<script src="/resources/assets/js/bootstrap-notify.js"></script>


</html>