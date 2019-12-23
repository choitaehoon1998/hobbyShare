<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <html>
    <head> 
    </head>
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">
<body><script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin></script>
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
    
    
    <div id="like_button_container">외안되</div>
    
    

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
</body>

<script type="text/javascript" src="/static/js/LikeButton.js">
</script></script>
</html>