<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<Style>
.round {
  height: 150px;
  width: 150px;
  border-radius: 50%;
  margin-bottom: 10px;
}

#filePath {
  position: absolute;
  clip: rect(0, 0, 0, 0);
}
</Style>

<form method="post" action="add" enctype="multipart/form-data">
	<div>맛집 등록</div>
	<img src="/upload/mypage/default.png" 
	id="view_file" name="view_file" class="round">
	<div style="margin-bottom: 20px;">
		<label for="filePath">사진선택</label>
		<input type="file" id="filePath" name="filePath">
		<div id="infoFile"></div>
	</div>
	매장명<div><input type="text" name="name" required></div>
	위치<div><input type="text" name="address" required></div>
	전화번호<div><input type="text" name="tel"></div>
	별점
	<div><input type="checkbox" value="1">★</div>
	<div><input type="checkbox" value="2">★★</div>
	<div><input type="checkbox" value="3">★★★</div>
	<div><input type="checkbox" value="4">★★★★</div>
	<div><input type="checkbox" value="5">★★★★★</div>
	내용<div><input type="text" name="conts" required></div>
	<button>등록</button>
</form>

<!-- 프로필 사진 -->
  <script>
    var filePath = document.getElementById("filePath");
    var viewFile = document.getElementById("view_file");
    
    filePath.onchange = function() {
    	console.log(filePath.files[0].name.substring(
      		  filePath.files[0].name.lastIndexOf("."), filePath.files[0].name.length));
      if (filePath.files[0].name.substring(
    		  filePath.files[0].name.lastIndexOf("."), filePath.files[0].name.length)
    		  == ".jpg" || ".jpeg" || ".png" || ".gif") {
        var reader = new FileReader();
        reader.onload = function() {
        	viewFile.setAttribute('src', event.target.result);
        }
        reader.readAsDataURL(filePath.files[0]);
        document.getElementById("infoFile").innerText = '';
      } else{
    	  document.getElementById("infoFile").innerText = "jpg, jpeg, png, gif 파일형식만 올려주세요";
    	  document.getElementById("infoFile").style.color = 'red';
      }
    }
  </script>