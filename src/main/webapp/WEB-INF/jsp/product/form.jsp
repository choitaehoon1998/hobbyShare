<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
.adder {
  width: 250px;
  height: 30px;
  resize: none; /* 크기고정 */
  /*   resize: horizontal; // 가로크기만 조절가능  resize: vertical;  세로크기만 조절가능  */
}
inpit {
  width: 40px;
  height: 50px;
}
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger {
  cursor: pointer;
}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker {
  cursor: pointer;
}
.fordivide {
  display: none;
}
.out {
  /* text-align: center; */
  width: 1000px;
  margin: auto auto;
 /*  border: solid 0.5px #82ae46; */
  background: #f7f6f2 !important;
}
select#Bselect {
  height: 30px;
  padding-top: 0px;
  padding-bottom: 0px;
  width: 760px;
  margin-left: 10px;
}
select.custom-select {
  width: 120px;
}
/* .in {
  padding-left: 10px;
  text-align: left;
  padding-bottom: 10px;
  border-top: 0.1px #82ae46 solid;
  padding-top: 5px;
  padding-bottom: 8px;
} */
.btn {
  height: 40px;
  padding: 0px 0px 0px 0px !important;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  margin-right: 3px;
}
h5 {
  color: #82ae46;
  font-weight: bold;
}
/* h6 {
  padding-bottom: 10px;
  font-weight: 600;
} */
select#Aselect {
  height: 30px;
  padding-top: 0px;
  padding-bottom: 0px;
  width: 760px;
  margin-left: 10px;
}
/* form {
  padding-top: 20px;
} */
h3 {
  color: #82ae46;
  font-weight: bold;
}
input#pN {
  margin: auto;
  margin-top: 5px;
  width: 910px;
  height: 35px !important;
}
input#mN {
  margin-top: 5px;
  width: 963.5px;
}
input#datetimepicker4 {
  margin: auto;
  width: 910px;
  margin-top: 5px;
  height: 35px !important;
}
input#original {
  margin: auto;
  width: 910px;
  margin-top: 5px;
  height: 35px !important;
}
input#sellprice {
  margin: auto;
  width: 910px;
  margin-top: 5px;
  height: 35px !important;
}
input#btnAdd {
  margin-left: 10px;
}
input#optionN {
  margin-left: 10px;
}
body.goto-here {
  padding-top: 15px;
  padding-bottom: 15px;
}
.attachFileDiv {
  display: inline-block;
  margin-right: 10px;
}
.attachFileDiv input[type="file"] { /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
#addbutton {
  padding: 0px;
}

label {
  font-weight: 400;
}
textarea {
  overflow: auto;
  resize: none;
}
h6#marginless {
  margin: 0px;
  padding-bottom: 1px;
}
.label {
  margin-left: 3px;
  margin-right: 3px;
  font-size: larger;
  font-style: italic;
}
input:focus {
  outline: 2px solid #82ae46;
}
input.btn.btn-primary.py-3.px-4 {
    width: 58px;
    margin-left:5px;
}
input.btn.btn-primary.py-3.px-4.add-btn {
    vertical-align: super;
    margin-left: 30px;
}
input.btn.btn-primary.py-3.px-4.delete-btn {
    margin-left: 10px !important;
}
.optionAdd {
    width: 100px !important;
    height:33px !important;
}
button#button {
    width: 100px;
}
/* td.dv {
    width: 980px;
    padding-left: 22px;
    padding-top: 5px;
    padding-bottom: 5px;
} */
td.dv {
    display: list-item;
    margin-left: 45px;
    color: black;
    font-weight: bold;
}
.margininput{
margin :0px 10px 0px 10px;
}
#postionsaver{
margin:0px 10px 0px 10.9px !important;
}
td.add-option-contents {
    display: list-item;
    margin-top: 10px;
    color: black;
}
/*추가  */
h3.add-title {
    text-align: center;
    font-size: 35px;
    border: solid #82ae46 2px;
    background-color: #82ae46;
    padding: 20px;
    color: white;
}
div#select-wrap {
    text-align: center;
}
h6.subselect-group {
    display: inline-block;
    font-weight: bold;
    font-size: 18px;
    color: black;
}
select#Aselect {
    width: 220px;
    font-weight: bold;
}
select#Bselect {
    width: 220px;
    font-weight: bold;
}
div#subselect {
    display:inline-block;
    margin-left: 20px;
}
h6.input-bar {
    font-weight: bold;
   /*  margin-left: 25px; */
}
h5.sub-title {
    margin-top: 10px;
    text-align: left;
    margin-left: 30px;
    display: inline-block;
    font-size: 25px;
}
span.input-name {
    color: black;
    display: list-item;
    margin: 15px 0px 15px 45px; 
}
hr.line-group {
    margin-top: 20px;
    margin-bottom: 20px;
}
label#filelabel {
    margin-left: 25px;
}
img.img-box {
    margin-left: 25px;
    margin-top: 10px;
}
h5.sub-title.none-inline-block {
    display: block !important;
}
.fa-plus-square:before {
    color: black;
    content: "\f0fe";
    margin-left: 5px;
}
.fa-minus-square:before {
    color: black;
    content: "\f146";
}
a#icon-wrap {
    color: black;
    font-size: 25px;
    vertical-align: middle;
}
#item-specification-textarea {
    width: 910px;
    margin-top: 10px;
}
.item-specification-wrap {
    text-align: center;
    margin-bottom: 100px;
}
.btn-wrap {
    padding: 40px;
}
form#product-form {
    margin-top: 30px;
}
.hero-wrap.hero-bread.product-form-page {
    background-position: top;
}
form#product-form {
    border: solid;
}
.marginer{
margin-left : 25px;
}
.fa-trash-alt:before {
    FONT-SIZE: X-LARGE;
    color: black;
    TEXT-ALIGN: CENTER;
    content: "\f2ed";
    /* MARGIN-TOP: 59PX; */
}
</style>

    <div class="hero-wrap hero-bread product-form-page" style="background-image: url('/images/item9.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center fadeInUp ftco-animated">
           
          </div>
        </div>
      </div>
    </div>


<%
    session.setAttribute("memberNo", "1");
  %>
<div class="out">
  <form id="product-form" action='add' method='post' enctype='multipart/form-data'>
    <h3 class="add-title">새 상품 등록 관리</h3>
    <br>
    <div class="in">
      <h5 class="sub-title">I. 상품 등록  &nbsp; <i class="fas fa-archive"></i> </h5>
      <hr class="line-group">
      <div id="select-wrap">
        <h6 class="subselect-group">
          상품 카테고리 대분류 선택 <select id="Aselect" class="custom-select">
            <option value="clean">청소</option>
            <option value="office">사무</option>
            <option value="organic">유기농</option>
            <option value="furniture">가구</option>
          </select>
        </h6>
        <div id="subselect">
          <h6 class="subselect-group">
            상품 카테고리 소분류 선택 <select name="groupNo" id="Bselect"
              class="custom-select">
              <option value=1>세제류</option>
              <option value=2>위생용품</option>
              <option value=3>화장지</option>
              <option value=4>티슈</option>
            </select>
          </h6>
        </div>
      </div>

      <h6 class="input-bar">
        <span class="input-name">상품명</span> <input class="adder form-control" placeholder="상품명을 입력해주세요." type="text"
          id="pN" name="productName" required>
      </h6>

      <h6 class="input-bar">
        <span class="input-name">수량</span> <input class="adder form-control fullproductNo" placeholder="수량을 입력해주세요." type="number" id="pN"
          name="quantity" min="0" required>
      </h6>
      
      <h6 class="input-bar">
        <span class="input-name">유통기한</span>  <input class="adder datetimepicker4 form-control" placeholder="유통기한을 입력해주세요"
          type='text' id='datetimepicker4' name="expirationDate"
          required readonly />
      </h6>


      <h6 class="input-bar">
        <span class="input-name">원산지</span>  <input class="adder form-control" id="original" placeholder="원산지를 입력해주세요"
          type="text" name="origin" class="form-control" required>
      </h6>
      <h6 class="input-bar">
       <span class="input-name">판매가</span>  <input class="adder form-control" id="sellprice" placeholder="가격을 입력해주세요"
          type="number" name="price" class="form-control" step=10
          required>
      </h6>
    </div>
    <hr class="line-group">
    <div class="image-wrap">
      <h5 class="sub-title">II. 이미지 등록  &nbsp; <i class="fas fa-images"></i> </h5>
      <!-- <input type="button" class="btn btn-primary py-3 px-4 add-btn"
            value="추가" onclick="attachFile.add()"> -->
       <a id=" imgbar-add-btn" href="javascript:void(0)"><i onclick="attachFile.add()" class="fas fa-plus-square"></i></a>
      <hr class="line-group">
      <div id="attachFileDiv" class="attachFileDiv">
        <h6 id="addbutton">
          <!-- <input type="button" class="btn btn-primary py-3 px-4"
            value="추가" onclick="attachFile.add()"> -->
        </h6>
      </div>
    </div>
    <hr class="line-group">
    <table id="list">
    </table>
    
    
    <div class="image-wrap">
      <h5 class="sub-title">III. 상세이미지 등록  &nbsp; <i class="fas fa-images"></i> </h5>
      <!-- <input type="button" class="btn btn-primary py-3 px-4 add-btn"
            value="추가" onclick="attachFile.add()"> -->
       <a id=" imgbar-add-btn2" href="javascript:void(0)"><i onclick="attachFile2.add()" class="fas fa-plus-square"></i></a>
      <hr class="line-group">
      <div id="attachFileDiv2" class="attachFileDiv marginer">
        <h6 id="addbutton2">
          <!-- <input type="button" class="btn btn-primary py-3 px-4"
            value="추가" onclick="attachFile.add()"> -->
        </h6>
      </div>
    </div>
    
    
    <hr class="line-group">
    <table id="list">
    </table>
    
    
    
    

    <div class="in">
      <h5 class="sub-title">III. 옵션 관리 &nbsp; <i class="far fa-list-alt"></i></h5>
      <hr class="line-group">
      <h6>
      </h6>
      <table id="optionplus">
       <tr><td class="dv">옵션명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="optionName"  id ="postionsaver"class="margininput" placeholder="수량-색깔-성별 형태로입력" >
    <table class="dr"><a href="javascript:void(0)"><i  id="optionitemadd" class="fas fa-plus-square"></i></a></table>
    </td></tr>
      </table>
    </div>
    <hr class="line-group">
    <div class="item-specification-wrap">
      <h5 class="sub-title  none-inline-block">IV. 상품 설명  &nbsp; <i class="fas fa-edit"></i> </h5>
      <hr class="line-group">
      <textarea id="item-specification-textarea" rows="5" cols="50" name="description"
        placeholder="내용을 입력하세요" required> </textarea>
      <br>
      <div class="btn-wrap">
        <button class="btn btn-primary py-3 px-4 adderButton" id=button>등록하기</button>
        <INPUT type="button" value="취소" class="btn btn-primary py-3 px-4"
          onClick="location.href='/greenright/product/manage'">
      </div>
    </div>
  </form>
</div>

<script>
</script>