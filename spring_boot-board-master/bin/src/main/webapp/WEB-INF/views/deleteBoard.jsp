<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>인턴프로젝트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/paper/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.rawgit.com/mladenplavsic/bootstrap-navbar-sidebar/3bd282bd/docs/navbar-fixed-right.min.css">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/mladenplavsic/bootstrap-navbar-sidebar/3bd282bd/docs/navbar-fixed-left.min.css">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/mladenplavsic/bootstrap-navbar-sidebar/3bd282bd/docs/docs.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.rawgit.com/mladenplavsic/bootstrap-navbar-sidebar/3bd282bd/docs/docs.js"></script>
<script async defer src="https://buttons.github.io/buttons.js"></script>
<style>



.nav-link {
	color: white !important;
}

 .dropdown .dropdown-menu a:hover 
{
  color: #000 !important;
  background-color:#FF0000;
  border-color: #000;
}




</style>
<script type="text/javascript">
$(document).ready(function() {
    $("#writeBtn").click(function(){
    	location.href ="write";
    })
    $.ajax({url: "boardList", success: function(result){             
        var html = "";
    	result.forEach(function(item){
        	html+= "<tr> <td><a href = 'view?idx=" + item.idx + "'>" + item.title + "</a>"
        	+ "<button type='button' class='btn btn-danger' style='float: right;' id = 'deleteBtn' onclick = 'location.href = 'view?idx='" + item.idx +"'>글삭제</button></td> </tr>"
        })
       $("#listArea").append(html)
       $('#example').DataTable();
     }});
     $("#deleteBtn").click(function(){
    	location.href ="write";
     })
} );
/* 
html+= "<tr> <td><a href = 'view?idx=" + item.idx + "'>" + item.title + "</a></td> </tr>"
+ "<button type='button' class='btn btn-primary' align='right' id = 'deleteBtn'>글삭제</button></td> </tr>"
<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
*/
</script>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1><a href="index.html">인턴 프로젝트 게시판</a></h1>
</div>
	<nav class="navbar navbar-inverse navbar-fixed-left navbar-light">
		<div class="container">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">CONTENTS</a>
			</div>


			<!-- collapse 클릭하면 펼쳐지고 보여지는 기능 -->
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav flex-column">

					<li class="nav-item"><a class="nav-link" href="index">홈</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" style="color:white">게시판 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="mainBoard" style="color:bk">메인 게시판</a></li>
							<li><a href="tempBoard" style="color:bk">임시저장 게시판</a></li>
							<li><a href="saveBoard" style="color:bk">완료 게시판</a></li>
							<li><a href="deleteBoard" style="color:bk">삭제 게시판</a></li>
						</ul></li>




				</ul>
			</div>


		</div>
	</nav>




<div class="container" style="margin-top:30px">
	<div class="row">
		<div class="col-sm-12">
	      <h2 style="color:green">삭제된 게시물</h2>
			<table class="table table-hover table-striped" id="example" class="display" style="width:50%">
		        <thead>
		            <tr>
		                <th>제목</th>
		            </tr>
		        </thead>
		        <tbody id = "listArea">
		        </tbody>
		    </table>
			<button type="button" class="btn btn-primary" id = "writeBtn">글쓰기</button>
			
		</div>
	</div>
</div>
</body>
</html>
