<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/img/KakaoTalk_logo.svg" />
    <link rel="apple-touch-icon" href="/img/KakaoTalk_logo.svg" />
    <link rel="stylesheet" href="/css/more.css" />
    <link rel="stylesheet" href="/css/css.css" />

    <title>KakaoTalk</title>
  </head>
<body>
  <div class="container">
    <header id="menu"></header>
    <div class="see more">
      <p class="see">더보기</p>
    </div>
    <div class="profile">
      <p class="profile-name">${B_MoreDTO.getName()}</p>
      <p class="profile-id">계정</p>
      <p class="profile-email">${B_MoreDTO.getEmail()}</p>
      <p class="profile-contacted">연락처</p>
      <p class="profile-phone">${B_MoreDTO.getPhone()}</p>
    </div>

      <hr class="contour" />

      <div class="Personal settings">
        <p class="basic">기본 프로필관리</p>
        <button class="buttonredaction">
          <span class="redaction"> 편집 </span>
        </button>
      </div>

      <div class="moremodal"></div>
      <div class="modal_profilemodal">
        <a class="arrow">&larr;</a>

        <p class="basic2">기본 프로필관리</p>
        <img
          src="https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230502134308_2e69548418dd497a81dc68175eb02aac.png"
          class="profilecharracter"
        />
        <div>
  <label for="username" class="sr-only"></label>
  <input
    type="text"
    id="username"
    name="username"
    class="profilename2"
    placeholder="사용자 이름을 입력하세요"
    value="${B_MoreDTO.getUsername()}"
  />
  <hr class="profilehr" />
  <label for="status-message" class="sr-only"></label>
  <input
    type="text"
    id="status-message"
    name="status-message"
    class="message"
    placeholder="상태메시지를 입력하세요"
    value="${B_MoreDTO.getStatusMessage()}"
  />
  <hr class="messagehr" />
  <button class="inerscheck">확인</button>
</div>
      </div>

<div>
  <button class="secession">탈퇴하기</button>
</div>

<div class="modal2">
  <div class="secessionmodal">
    <div class="withdrawal">탈퇴하시겠습니까?</div>
    <div>
      <button class="yes" onclick="withdrawal()">네</button>
    </div>
    <div><button class="no">아니요</button></div>
  </div>
</div>

        </div>

    <script src="/js/more.js"></script>
    <script src="/js/menu.js"></script>
    <script>
      function open() {
        document.querySelector('.moremodal').style.display = 'block';
        document.querySelector('.modal_profilemodal').style.display = 'block';
      }

      function close() {
        document.querySelector('.moremodal').style.display = 'none';
        document.querySelector('.modal_profilemodal').style.display = 'none';
      }

      document
        .querySelector('.buttonredaction')
        .addEventListener('click', open);
      document.querySelector('.inerscheck').addEventListener('click', close);
      document.querySelector('.arrow').addEventListener('click', close);
    </script>

    <script>
      function modal2open() {
        document.querySelector('.modal2').style.display = 'block';
        document.querySelector('.secessionmodal').style.display = 'block';
      }

      function modal2close() {
        document.querySelector('.modal2').style.display = 'none';
        document.querySelector('.secessionmodal').style.display = 'none';
      }

      document
        .querySelector('.secession')
        .addEventListener('click', modal2open);

      document.querySelector('.yes').addEventListener('click', function () {
        const href = this.getAttribute('data-href');
        window.location.href = href;
      });
      document.querySelector('.no').addEventListener('click', modal2close);
      
      document.querySelector(".yes").addEventListener("click", function() {
    	  // 컨트롤러 호출
function withdrawal() {
  var phone = "${B_MoreDTO.getPhone()}";
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "/withdrawal?phone=" + phone, true);
  xhr.send();

}
    </script>

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  </body>
</html>
