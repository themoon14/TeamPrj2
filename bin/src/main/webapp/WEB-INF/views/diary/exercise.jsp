<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/main.min.css">
<script src="js/main.js"></script>
<script src="js/ko.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			selectable : true,
			locale : 'ko',
			dateClick : function(info) {
				document.getElementById("date").value = info.dateStr;

				events: [ /* event data here */]
			},
			initialDate : '2021-10-12',
			/*  
			calendar.addEvent({
				title : i,
				start : '2021-10-06',
				end : '2021-10-07'
			})

			,
			 */
			dayMaxEventRows : true, // for all non-TimeGrid views
			dayMaxEventRows : 3, // adjust to 6 only for timeGridWeek/timeGridDay

			select : function(arg) {
				var title = prompt('Event Title:');
				if (title) {
					calendar.addEvent({
						title : title,
						start : arg.start,
						end : arg.end,
						allDay : arg.allDay
					})
				}
			},

			eventClick : function(arg) {
				if (confirm('Are you sure you want to delete this event?')) {
					arg.event.remove()
				}
			}

		});

		calendar.render();
	});
	function loadFile(input) {
		var file = input.files[0]; //선택된 파일 가져오기
		/*  
		 */
		//미리 만들어 놓은 div에 text(파일 이름) 추가
		//새로운 이미지 div 추가
		//document.getElementById('image-upload').style.visibility = 'hidden';
		var newImage = document.createElement("img");
		newImage.setAttribute("class", 'img');

		//이미지 source 가져오기
		newImage.src = URL.createObjectURL(file);

		newImage.style.width = "70%";
		newImage.style.height = "70%";
		newImage.style.objectFit = "contain";

		//이미지를 image-show div에 추가
		//var container = document.getElementById('image-show');
		
		$("#diaryphoto").attr("src", newImage.src);
	    //container.appendChild(newImage);
	};
</script>
<title>Insert title here</title>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #e7e7e7;
	background-color: #f3f3f3;
}

li {
	float: left;
}

li a {
	display: block;
	color: #666;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	color: white;
	background-color: #04AA6D;
}

li a.active {
	color: white;
	background-color: #04AA6D;
}

dropdown2 {
	position: relative;
	display: inline-block;
}

.dropdown2-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown2:hover .dropdown2-content {
	display: block;
}

.flex_container {
	display: flex;
}

.flex_item {
	margin: auto;
}

.jumbotron {
	background-color: #f9f9f9;
}

#chooseFile  {
	visibility: hidden;
}
</style>
</head>
<body>
	<ul class="nav justify-content-around bg-light">
		<li class="flex-fill"><a class="" href="/test/news">News</a></li>
		<li class="dropdown2 flex-fill"><a href="javascript:void(0)"
			class="dropbtn">다이어트 자극</a>
			<div class="dropdown2-content flex-fill" style="width: 17.8%">
				<a href="/test/dietPhoto">다이어트 자극 사진</a> <a href="/test/dietYoutube">다이어트
					자극 영상<img src="/image/youtube.png" style="height: 18px;">
				</a>
			</div></li>
		<li class="dropdown2 flex-fill"><a href="javascript:void(0)"
			class="dropbtn ">와글와글</a>
			<div class="dropdown2-content flex-fill" style="width: 15.8%">
				<a href="/test/wagleFree">자유게시판</a> <a href="/test/wagleQnA">건강
					QnA</a> <a href="/test/calorieDic">칼로리 사전</a> <a href="/test/recipe">다이어트
					Recipe</a> <a href="/test/wagleShowoff">다이어트 인증샷</a>
			</div></li>
		<li class="dropdown2 flex-fill"><a href="javascript:void(0)"
			class="dropbtn">다이어트 다이어리</a>
			<div class="dropdown2-content flex-fill" style="width: 19.5%">
				<a href="/test/exercise">운동 일기</a> <a href="#">식단 일기</a>
			</div></li>
		<li class="flex-fill"><a href="/test/myBody">나의 Body</a></li>
		<li class="flex-fill"><a href="/test/userupdate">회원정보</a></li>
	</ul>

	<div id="calendar" style="float: left; width: 66%;"></div>
	<div id="diary" style="float: left; width: 33%;">
		<form action="/join" method="post">
			<div class="form-group">
				<input type="text" id="date" name="username" class="form-control"
					required="required" readonly="readonly">
			</div>
			<div class="form-group">
				<input type="text" name="username" class="form-control"
					placeholder="음식명을 입력해주세요" required="required" maxlength="20">
			</div>

			<div class="form-group">
				<input type="text" name="username" class="form-control"
					placeholder="kcal" required="required" maxlength="20">
			</div>
			<div class="image-upload" id="image-upload">

				<div class="button">
					<label for="chooseFile"> 👉 CLICK HERE! 👈 </label> <input
						type="file" id="chooseFile" name="chooseFile" accept="image/*"
						onchange="loadFile(this)">
				</div>
			</div>
			<div class="image-show" id="image-show">
				<img id="diaryphoto" src="" alt="">
			</div>
			<button type="submit" class="btn btn-primary">일기저장</button>
		</form>



		<div class="container">
			<form method="post" enctype="multipart/form-data"></form>
		</div>
	</div>



	<%@ include file="../layout/footer.jsp"%>