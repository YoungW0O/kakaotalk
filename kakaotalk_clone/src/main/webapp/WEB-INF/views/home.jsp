<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/img/KakaoTalk_logo.svg" />
    <link rel="apple-touch-icon" href="/img/KakaoTalk_logo.svg" />
    <link rel="stylesheet" href="/css/css.css" />
    <link rel="stylesheet" href="/css/home.css" />
    <title>KakaoTalk</title>
    <script src="/js/dummy.js"></script>
    <script src="/js/user.js"></script>
  </head>
  <body>
    <div class="container">
      <header id="menu"></header>

      <section class="friendList">
        <div class="top">
          <p>친구</p>
          <div class="top-icon">
            <img src="/img/search_icon.svg" alt="search" id="search_icon" />
            <img
              src="/img/plusUser_icon.svg"
              alt="plusUser"
              id="plusUser_icon"
            />
          </div>
        </div>

        <div id="search" style="display: none">
          <div class="reading_glasses">
            <span class="circle"></span>
            <span class="line"></span>
          </div>
          <input type="text" id="searchInput" placeholder="이름으로 검색" />
        </div>

        <ul id="searchList" style="display: none" class="listStyle"></ul>

        <div id="listBox" style="display: block">
          <div id="user"></div>

          <div class="box">
            <div class="boxTop">
              <p>즐겨찾기</p>
              <div
                id="arrowLike"
                class="arrow"
                onclick="toggle(this.id);"
                style="transform: rotate(0deg)"
              >
                <span></span>
                <span></span>
              </div>
            </div>
            <ul id="like" class="listStyle"></ul>
          </div>

          <div class="box">
            <div class="boxTop">
              <p>친구 <span id="listLength"></span></p>
              <div
                id="arrowList"
                class="arrow"
                onclick="toggle(this.id);"
                style="transform: rotate(0deg)"
              >
                <span></span>
                <span></span>
              </div>
            </div>
            <ul id="list" class="listStyle"></ul>
          </div>
        </div>

        <div id="plusUser_form" style="display: none">
          <div>
            <p class="title">친구추가</p>
            <p class="text1">연락처</p>
            <input type="text" id="inputName" placeholder="친구 이름" />
            <input type="number" id="inputPhone" placeholder="연락처" />
            <p class="text2">친구의 이름과 전화번호를 입력해주세요.</p>
          </div>
          <button id="addButton">친구추가</button>
        </div>
      </section>
    </div>

    <script src="/js/home.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/plusUser.js"></script>
    <script src="/js/searchUser.js"></script>
  </body>
</html>