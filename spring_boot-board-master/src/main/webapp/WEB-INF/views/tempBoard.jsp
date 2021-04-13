<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
header {
	height: 100px;
	padding: 1rem;
	color: white;
	background: teal;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	text-align: center;
	align-items: center;
}

h1 {
	margin-left: 10em;
}
.nav-link {
	color: white !important;
}

.dropdown .dropdown-menu a:hover {
	color: #000 !important;
	background-color: #FF0000;
	border-color: #000;
}

.footer {
	width: 100%;
	height: 100px;
	position: absolute;
	bottom: 0;
	text-align: center;
	color: black;
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#writeBtn").click(function() {
							location.href = "write";
						})
						$
								.ajax({
									url : "boardList",
									success : function(result) {
										var html = "";

										result
												.forEach(function(item) {
													html += "<tr> <td><a href = 'view?idx="
															+ item.idx
															+ "'>"
															+ item.title
															+ "</a>"
															+ "<button type='button' class='btn btn-danger' style='float: right;' id = 'deleteBtn' onclick = 'location.href = 'view?idx='"
															+ item.idx
															+ "'>글삭제</button></td> </tr>"
												})
										$("#listArea").append(html)
										$('#example').DataTable();
									}
								});
						$("#deleteBtn").click(function() {
							location.href = "write";
						})
					});
	/* 
	 html+= "<tr> <td><a href = 'view?idx=" + item.idx + "'>" + item.title + "</a></td> </tr>"
	 + "<button type='button' class='btn btn-primary' align='right' id = 'deleteBtn'>글삭제</button></td> </tr>"
	 <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
	 */
</script>
</head>
<body>
	<header>
		<h1 style="color: white;">
			<a href="index" style="color: white">인턴 프로젝트 게시판
		</h1>
		</a> <span><h4 style="color: white;">임시 사용자</h4></span>
	</header>


	<nav class="navbar navbar-inverse navbar-fixed-left navbar-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand"> <img class="sbdc" alt="SBDC"
					width="180" height="65"
					src="data:image/jpeg;base64,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">

				</a>
			</div>

			<div class="collapse navbar-collapse" id="collapsibleNavbar"
				style="margin-top: 100px">
				<ul class="navbar-nav flex-column">
					<li class="nav-item"><a class="nav-link" href="index">CONTENTS</a></li>
					<li class="nav-item"><a class="nav-link" href="index">홈</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" style="color: white">게시판 </a>
						<ul class="dropdown-menu">
							<li><a href="mainBoard" style="color: bk">메인 게시판</a></li>
							<li><a href="tempBoard" style="color: bk">임시저장 게시판</a></li>
							<li><a href="saveBoard" style="color: bk">완료 게시판</a></li>
							<li><a href="deleteBoard" style="color: bk">삭제 게시판</a></li>
						</ul></li>

				</ul>
			</div>


		</div>
	</nav>




	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-12">
				<h2 style="color: green">임시저장된 게시물</h2>
				<table class="table table-hover table-striped" id="example"
					class="display" style="width: 50%">
					<thead>
						<tr>
							<th>제목</th>
						</tr>
					</thead>
					<tbody id="listArea">
					</tbody>
				</table>
				<button type="button" class="btn btn-primary" id="writeBtn">글쓰기</button>

			</div>
		</div>
	</div>
	<footer class="footer">
		<!--	### 푸터 ###	-->
		<p style="color: black; text-align: left;">
		<div
			style="width: 250px; height: 50px; float: left; margin-left: 430px; margin-right: 100px">
			<img class="sbdc" alt="SBDC" width="250" height="50" align="middle"
				hspace="50"
				src="https://www.sbdc.or.kr/assets/images/footer/footer-logo.png">
		</div>
		<div style="margin-left: 300px">
			<p style="text-align: left;">
				(07997) 서울특별시 양천구 목동동로 309 중소기업유통센터<br> 대표자 : 정진수 / 대표전화 :
				02-6678-9000 / 사업자등록번호 : 107-81-53660 <br> © Small & Medium
				Business Distribution Center. All Rights Reserved.
			</p>
		</div>
		</p>
	</footer>
</body>
</html>
