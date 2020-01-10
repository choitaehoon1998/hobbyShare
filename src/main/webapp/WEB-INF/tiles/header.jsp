<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.wholebackground {
	background: #EEEEEE;
	margin: 0px;
}

.hobbyShare {
	text-align: left;
	background: #FFF8E1;
	color: #B71C1C;
	font-size: 3.5em;
	padding-bottom: 1%;
	padding-top: 1%;
	font-weight: bolder;
}

.headerimg {
	weight: 55px;
	height: 51px;
	object-fit: fill;
	margin-left: 35px;
	margin-right: 15px;
}

.sign {
	font-size: 40px;
	border-radius: 8px;
	outline: 0;
	color: #FFFFFF;
	background: #B71C1C;
	cursor: pointer;
}

.rightsign {
	display: inline;
	float: right;
	margin-right: 2.6%;
	margin-bottom: 0.3%;
}

.navbar {
	background: #CCC5AF;
	height: auto;
}

li {
	list-style: none;
}

ul.menu01 {
/* 여기 고민중 */ 
  padding-left: 3%;
  padding-right: 3%; 
	margin: 0px;
}

.topMenu {
	width: 100%;
	margin-bottom: 20px;
	text-align: center;
	height: 40px;
	
}

.topMenu:after {
	content: "";
	display: block;
	clear: both;
}

.menu01>li {
	float: left;
	width: 24.9%;
	line-height: 40px;
	border-bottom : 0.1px solid #ccc;
	border-right : 0.1px solid #ccc;
	border-left : 0.1px solid #ccc;
}

.menu01 span {
	font-size: 20px;
	font-weight: bold;
}

.dept01 {
	display: none;
	padding : 0 0 0 0 ; 
}

#subMenu {
clear : both ; 
	float: none;
}
</style>

<div class="headerpack">
	<header class="hobbyShare">
		<img class="headerimg"
			src="https://d1qb2nb5cznatu.cloudfront.net/startups/i/540700-10aa3920c8496a04a8bc10bc298fedc5-medium_jpg.jpg?buster=1416624520">Hobby
		Share
		<div class="rightsign">
			<button class="sign">SIGN IN</button>
			<button class="sign">SIGN UP</button>
		</div>
	</header>
	<div class="topMenu navbar remover">
		<ul class="menu01">
			<li><span>맛집</span>
				<ul class="dept01">
					<li id="subMenu">맛집 1</li>
					<li id="subMenu">맛집 2</li>
					<li id="subMenu">맛집 3</li>
					<li id="subMenu">맛집 4</li>
					<li id="subMenu">맛집 5</li>
				</ul></li>
			<li><span>게임</span>
				<ul class="dept01">
					<li id="subMenu">겜 1</li>
					<li id="subMenu">겜 2</li>
					<li id="subMenu">겜 3</li>
					<li id="subMenu">겜 4</li>
					<li id="subMenu">겜 5</li>
				</ul></li>
			<li><span>축구</span>
				<ul class="dept01">
					<li id="subMenu">축구1</li>
					<li id="subMenu">축구2</li>
					<li id="subMenu">축구3</li>
					<li id="subMenu">축구4</li>
					<li id="subMenu">축구5</li>
				</ul></li>
			<li><span>패션</span>
				<ul class="dept01">
					<li id="subMenu">패션1</li>
					<li id="subMenu">패션2</li>
					<li id="subMenu">페션3</li>
					<li id="subMenu">페션4</li>
					<li id="subMenu">페션5</li>
				</ul></li>
		</ul>
	</div>
</div>

<script>
 $(document).on('mouseenter', '.topMenu ', function() {
	    $('.dept01').slideDown(1);
	        $(this).addClass("remover");
	});
	$(document).on('mouseleave', '.remover', function () {
	    if ($(this).hasClass('remover')) {
	        $('.dept01').slideUp(1);
	        $(this).removeClass("remover");
	    }
	});
 </script>

