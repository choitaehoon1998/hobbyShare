<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<style>
.btn.btn-primary {
  width: 58px;
  height: 38px;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.adder {
  width: 250px;
  height: 30px;
  resize: none; /* ũ����� */
  /*   resize: horizontal; // ����ũ�⸸ ��������  resize: vertical;  ����ũ�⸸ ��������  */
}
inpit {
  width: 40px;
  height: 50px;
}
/*datepicer ��ư �ѿ��� �� �հ��� ��� ǥ��*/
.ui-datepicker-trigger {
  cursor: pointer;
}
/*datepicer input �ѿ��� �� �հ��� ��� ǥ��*/
.hasDatepicker {
  cursor: pointer;
}
.dv {
  border: solid 0.5px #82ae46;
}
.fordivide {
  display: none;
}
.out {
  text-align: center;
  width: 1000px;
  margin: auto auto;
  border: solid 0.5px #82ae46;
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
.in {
  padding-left: 10px;
  text-align: left;
  padding-bottom: 10px;
  border-top: 0.1px #82ae46 solid;
  padding-top: 5px;
  padding-bottom: 8px;
}
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
h6 {
  padding-bottom: 10px;
  font-weight: 600;
}
select#Aselect {
  height: 30px;
  padding-top: 0px;
  padding-bottom: 0px;
  width: 760px;
  margin-left: 10px;
}
form {
  padding-top: 20px;
}
h3 {
  color: #82ae46;
  font-weight: bold;
}
input#pN {
  margin-top: 5px;
  width: 963.1px;
}
input#mN {
  margin-top: 5px;
  width: 963.5px;
}
input#datetimepicker4 {
  width: 963.5px;
  margin-top: 5px;
}
input#original {
  width: 963.5px;
  margin-top: 5px;
}
input#sellprice {
  width: 963.5px;
  margin-top: 5px;
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
.attachFileDiv label {
  -webkit-appearance: button;
  display: inline-block;
  text-align: center;
  vertical-align: middle;
  user-select: none;
  font-size: 1rem;
  line-height: 1.5;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
    border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
    -webkit-box-shadow 0.15s ease-in-out;
  box-shadow: 0px 24px 36px -11px rgba(0, 0, 0, 0.09);
  height: 40px;
  padding: 0px 0px 0px 0px !important;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  margin-right: 3px;
  background: #82ae46;
  border: 8px solid #82ae46;
  color: #fff;
  cursor: pointer;
  margin: 0px 0px 0px 0px;
}
.attachFileDiv input[type="file"] { /* ���� �ʵ� ����� */
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
td.dv {
  font-weight: bolder;
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
</style>
<meta charset="EUC-KR">
<title>feedbackForm</title>
</head>
<body>
<!--<div> 
<h1>�м�</h1>
<form>
ī�װ� ���� :
 <select name ="category">
 <option value=1>���</option>
 <option value=2>��Ʈ��</option>
 <option value=3>ĳ���</option>
 <option value=4>�̴ϸָ���</option>
 <option value=5>�Ƹ�ī��</option>
 <option value=6>��ũ����</option>
 </select>
 <br>
���� : <input type="text"> <br>
���� : <textarea></textarea>
</form>
</div> -->
<form action="feedbackadd" method='post' enctype='multipart/form-data' id="my-form">
  <div
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">Fashion</h1>
    <p style="text-align: center;"></p>
      <div class="form-group">
        <label for="inputTitle"><b>����</b></label> 
        <input type='text' name='title' class="form-control" value="" id="my-title">
      </div>

      <div class="form-group">
        <label for="message"><b>����</b></label>
        <textarea name='contents' rows="10" cols="30" class="form-control" id="my-contents"></textarea>
      </div>

   <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text">Upload</span>
        </div>
        <div class="custom-file">
          <input type="button" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
          <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
        </div>
      </div>
      
      <div class="in">
      <br>
        <div id="attachFileDiv" class="attachFileDiv"></div>
      </div>
    
      <div class="form-group">
       <p style="text-align: right;">
          <input id="my-add" type="button" class="btn btn-primary" value="���">
        </p>
        </div>
      
      
   <table id="list"></table> 
</div>
</form>

</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>
$('#my-add').click(function(){
  if($('#my-title').val() == ""){
    swal ( "No" ,  "������ �Է����ּ���!" ,  "error" )
  } else if ($('#my-contents').val() == "") {
    swal ( "No" ,  "������ �Է����ּ���!" ,  "error" )
  } else {
    $('#my-form').submit();
  }
});
$(function(){
  $("#inputGroupFile01").click(function(){
    attachFile.add();
  }); 
})
</script>
     
<script>
var temp;
  attachFile = {
    idx : 0,
    add : function() { // �����ʵ� �߰�
      var o = this;
      var idx = o.idx;
      var div = document.createElement('div');
      div.style.marginTop = '3px';
      div.style.display="inline-block";
      
      div.id = 'file' + o.idx;
      var label = document.createElement('label');
      label.setAttribute("for", 'fileField' + o.idx);
      label.innerHTML = "���ϼ���";
      var dv = document.createElement('dv');
      dv.style.marginTop = '3px';
      dv.id = 'dv' + o.idx;
      var file = document.all ? document.createElement('<input name="files">')
          : document.createElement('input');
      file.type = 'file';
      file.name = 'filePath';
      file.size = '40';
      file.className = 'btn btn-primary py-3 px-4';
      file.id = 'fileField' + o.idx;
      file.onchange = function() {
        o.prev(this, 'dv' + idx)
      };
      
      var btn = document.createElement('i');
      btn.className = 'fas fa-times';
      btn.style.color="red";
      btn.style.margin="5px";
      btn.style.display="none";
      btn.id = 'btn' + o.idx;
      btn.onclick = function() {
        o.del(idx)
      };
      btn.style.marginLeft = '5px';
      temp = btn;
      
      <!--div.appendChild(label); -->
      div.appendChild(file);
      document.getElementById('attachFileDiv').appendChild(div);
      document.getElementById('attachFileDiv').appendChild(dv);
      document.getElementById('attachFileDiv').appendChild(btn);
      $('#fileField'+o.idx).trigger('click');
      o.idx++;
    },
    del : function(idx) { // �����ʵ� ����
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('file' + idx));
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('dv' + idx));
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('btn' + idx));
      
    },
    prev : function(targetObj, View_area) { // �̹��� �̸�����
      var preview = document.getElementById(View_area); //div id
      var ua = window.navigator.userAgent;
      //ie�϶�(IE8 ���Ͽ����� �۵�)
      if (ua.indexOf("MSIE") > -1) {
        targetObj.select();
        try {
          var src = document.selection.createRange().text; // get file full path(IE9, IE10���� ��� �Ұ�)
          var ie_preview_error = document.getElementById("ie_preview_error_"
              + View_area);
          if (ie_preview_error) {
            preview.removeChild(ie_preview_error); //error�� ������ delete
          }
          var img = document.getElementById(View_area); //�̹����� �ѷ��� ��
          //�̹��� �ε�, sizingMethod�� div�� ���缭 ����� �ڵ����� �ϴ� ����
          img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
              + src + "', sizingMethod='scale')";
        } catch (e) {
          if (!document.getElementById("ie_preview_error_" + View_area)) {
            var info = document.createElement("<p>");
            info.id = "ie_preview_error_" + View_area;
            info.innerHTML = e.name;
            preview.insertBefore(info, null);
          }
        }
        //ie�� �ƴҶ�(ũ��, ���ĸ�, FF)
      } else {
        var files = targetObj.files;
        for (var i = 0; i < files.length; i++) {
          var file = files[i];
          var imageType = /image.*/; //�̹��� �����ϰ�츸.. �ѷ��ش�.
          var prevImg = document.getElementById("prev_" + View_area);
          if (!file.type.match(imageType)) {
            preview.removeChild(prevImg);
            continue;
          }
          //������ �̸����Ⱑ �ִٸ� ����
          if (prevImg) {
            preview.removeChild(prevImg);
          }
          var img = document.createElement("img");
          img.id = "prev_" + View_area;
          img.classList.add("obj");
          img.file = file;
          img.style.width = '100px';
          img.style.height = '100px';
          preview.appendChild(img);
          temp.style.display="inline-block";
          
          if (window.FileReader) { // FireFox, Chrome, Opera Ȯ��.
            var reader = new FileReader();
            reader.onloadend = (function(aImg) {
              return function(e) {
                aImg.src = e.target.result;
              };
            })(img);
            reader.readAsDataURL(file);
          } else { // safari is not supported FileReader
            //alert('not supported FileReader');
            if (!document.getElementById("sfr_preview_error_" + View_area)) {
              var info = document.createElement("p");
              info.id = "sfr_preview_error_" + View_area;
              info.innerHTML = "not supported FileReader";
              preview.insertBefore(info, null);
            }
          }
        }
      }
    }
  }
</script>

</html>