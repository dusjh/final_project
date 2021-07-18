<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>펀딩 글쓰기 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- 아이콘 넣기 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- =======================================================
  * Template Name: Mentor - v4.3.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	#container { width: 700px; margin: 0 auto; }
	h1 { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border : 1px solid black;
		margin : 0 auto;
		text-align: center;		
	}
	/* th { background-color: #ccccff; } */
	.center {text-align: center; }
</style>
<script>	
function add_div() { <%-- 리워드 폼 추가--%>
	
   var div = document.createElement('div'); <%--폼 생성--%>

   div.innerHTML = document.getElementById('room_type').innerHTML;
   document.getElementById('field').appendChild(div);	
		
}
	
function remove_div(obj) { <%-- 리워드 폼 삭제--%>
	document.getElementById('field').removeChild(obj.parentNode);
}

<%--숫자 입력시 자동 콤마 --%>
<%--function inputNumberFormat(obj) {
	obj.value = comma(uncomma(obj.value));
}

function comma(str) {
	str = String(str);
	return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
  }

function uncomma(str) {
	str = String(str);
	return str.replace(/[^\d]+/g, '');
  } --%>
  
function maxLengthCheck(obj) {
	if(obj.value.length > obj.maxLength) {
		obj.value = obj.value.slice(0, obj.maxLength);
	}
}

</script>
</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">WooMool</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="index.html">HOME</a></li>
          <li><a class="active" href="funding.html">펀딩</a></li>
          <li><a href="shopping.html">구매</a></li>
          <li class="dropdown"><a href="#"><span>커뮤니티</span>> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">공지사항</a></li>
              <li><a href="#">Q&A</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="contact.html">마이페이지</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="courses.html" class="get-started-btn">로그인</a>

    </div>
  </header><!-- End Header -->
<div id="container">
	<h1>펀딩 오픈 신청폼</h1>
	<hr>
<form action="insertBoard.do" method="post" enctype="multipart/form-data">
<table class="center">
	<thead>
		<tr>
			<th>지역</th>
			<td>
				<select name="region" required>
					<option value="">선택</option>
					<option value="Seoul">서울</option>
					<option value="Gyeonggi-do">경기</option>
					<option value="Incheon">인천</option>
					<option value="Gangwon-do">강원</option>
					<option value="Chungcheongbuk-do">충북</option>
					<option value="Chungcheongnam-do">충남</option>
					<option value="Sejong">세종</option>
					<option value="Daejeon">대전</option>
					<option value="Jeollabuk-do">전북</option>
					<option value="Jeollanam-do">전남</option>
					<option value="Gwangju">광주</option>
					<option value="Gyeongsangbuk-do">경북</option>
					<option value="Gyeongsangnam-do">경남</option>
					<option value="Daegu">대구</option>
					<option value="Ulsan">울산</option>
					<option value="Busan">부산</option>
					<option value="Jeju-do">제주</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>상품명</th>
			<td><input type="text" name="product_name" maxlength="25" size="30" placeholder="상품명을 입력해주세요" required></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>사업자명</th>
			<td><input type="text" value="${sessionScope.id }" size="30"  id="id" name="id" readonly></td>
		</tr>
		<tr>
			<th>마감일</th>
			<td><input type="date" name="deadLine" size="30" required></td>
		</tr>	
		<tr>
			<th>목표금액</th>	
			<td>
				<input type="number" maxlength="7" name="goal_money" placeholder="목표금액은 수정이 불가하니 신중히 입력해주세요"
				 size="30" oninput="maxLengthCheck(this)" required/>원
			</td>		
		</tr>
	</tbody>
</table>
<hr>
<h3>리워드 입력</h3>	 
<div id="room_type">
	<div class="form-group">
	<label for="image">리워드</label>
	<input type="text" id="name" name="reward_name" class="form-control" maxlength="25" required></input>
	<label for="image">가격</label>
	<input type="number" id="price" name="reward_price" class="form-control" maxlength="5" oninput="maxLengthCheck(this)" required/>
	<input type="button" value="추가" onclick="add_div()">
	</div>
	<input type="button" value="삭제" onclick="remove_div(this)">
</div>
<div id="field"></div>
<hr>
<h3>상품 설명</h3>
<table>
	<tr>
		<td colspan="2">
			<textarea rows="30" cols="100" placeholder="상품 정보를 입력해주세요" name="content" required></textarea>
		</td>
	</tr>
	<tr>
		<th>이미지 첨부</th>
		<td>
			<input type="file" name="pimg_no">
		</td>
	</tr>
</table>
	<hr>
	<div class="center" >
		<input type="submit" value="오픈 신청하기">
		<input type="reset" value="다시 작성">
		<input type="button" value="목록으로 이동" onclick="location.href='fundingList.jsp'">
	</div>
</form>
</div>
</body>
</html>
