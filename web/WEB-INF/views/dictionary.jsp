<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Термінологічний словник</title>
  <meta name="description" content="Blueprint: " />
  <meta name="keywords" content="" />
  <meta name="author" content="Codrops" />
  <link rel="stylesheet" href="resources/css/style.css">
  <link rel="shortcut icon" href="../favicon.ico">
  <link rel="stylesheet" type="text/css" href="resources/css/default.css" />
  <link rel="stylesheet" type="text/css" href="resources/css/component.css" />
  <script src="resources/js/modernizr.custom.js"></script>
  <script src="resources/js/searchAnimate.js"></script>
  <script src="resources/img/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="resources/img/bower_components/jquery.scrollTo/jquery.scrollTo.min.js"></script>

  <script>
    $(document).ready(function() {
      $("button").click(function() {
        str = $(this).val();
        $.scrollTo(str, 1000);
      });
    });
  </script>

</head>
<div id="page-wrap">
  <header>
    <button style="float: right" value="#thirdsection">про нас</button>
    <!--<hr>-->
    <button style="float: right" >форум</button>
    <!--<hr>-->
    <button style="float: right" value="#secondsection">контакти</button>
    <!--<hr>-->
    <button style="float: right" value="#mainsection">головна</button>
    <!--<hr>-->
  </header>
  <div id="mainsection">
    <button id="search_button" value="#cbp-fwslider" style="text-decoration: none;">перейти до пошуку</button>
  </div>
  <div class="title" id="category">
    <div class="titles">Категорії</div>
  </div>
  <div class="container">
    <%--<body>--%>
    <%--<c:forEach items="${words}" var="word">--%>
      <%--, ${word.word}, ${word.synonyms.get(0).word}, ${word.senses.get(0).sense}--%>

    <div id="cbp-fwslider" class="cbp-fwslider">
      <body>

      <ul>
        <c:forEach items="${words}" var="word">
        <li>
          <a>
            <div class="titleSlide">
              <h3>${word.category.name}</h3><br>
              <p>Тёлка - это хорошо и <br>даже очень</p><br><br>
              <button value="#searchBlock">Перейти к тёлке</button>
            </div>
            <div class="imageCategory" style="background: url('resources/images/1.jpg') center;"></div>
          </a>
        </li>
        </c:forEach>
        <li>
        <a>
          <div class="titleSlide">
            <h3>${word.category.name}</h3><br>
            <p>Тёлка - это хорошо и <br>даже очень</p><br><br>
            <button value="#searchBlock">Перейти к тёлке</button>
          </div>
          <div class="imageCategory" style="background: url('resources/images/5.jpg') center;"></div>
        </a>
      </li>
        <li>
          <a>
            <div class="titleSlide">
              <h3>${word.category.name}</h3><br>
              <p>Лёва - очень добрый <br> и почти не кусаеться</p><br><br>
              <button value="#searchBlock">Перейти к лёве</button>
            </div>
            <div class="imageCategory" style="background: url('resources/images/2.jpg') center;"></div>
          </a>
        </li>
        <li>
          <a>
            <div class="titleSlide">
              <h3>${word.category.name}</h3><br>
              <p>ДНК - дезокси-рибонуклииновая<br> кислота</p><br><br>
              <button value="#searchBlock">Перейти к лёве</button>
            </div>
            <div class="imageCategory" style="background: url('resources/images/3.jpg') center;"></div>
          </a>
        </li>
        <li>
          <a>
            <div class="titleSlide">

            </div>
            <div class="imageCategory" style="background: url('resources/images/4.jpg') center;"></div>
          </a>
        </li>
        <li>
          <a>
            <div class="titleSlide">
            </div>

            <div class="imageCategory" style="background: url('resources/images/6.jpg') center;"></div>
            <img src="resources/images/5.jpg" alt="img05" style="height: 0px;">
          </a>
        </li>

      </ul>

      </body>
    </div>

    <%--</body>--%>
  </div>
  <script src="resources/js/jquery.cbpFWSlider.min.js"></script>

  <script>
    $( function() {
      $( '#cbp-fwslider' ).cbpFWSlider();
    } );
  </script>
  <div class="title" id="search">
    <div class="titles">Пошук</div>
  </div>
  <div id="searchBlock">
    <form action="" id="search_line">
      <input type="text" onchange="anichange('#resultSearch')" id="query" placeholder="Що шукаємо?">
      <!--<input type="button" onclick="anichange('#resultSearch')" id="button_search" value="Знайти">-->
    </form>

    <body>
    <c:forEach items="${words}" var="word">





    <div id="resultSearch" style="display: none;">
      <div class="words">
        <div class="categoryImgBlock" style="background: url('resources/images/1.jpg') center; background-size: cover; ${word.category.name}">

        </div>
        <div class="wordBlock">

					<span>
						${word.word}: це ${word.senses.get(0).sense}
                        Синонимы : ${word.synonyms.get(0).word}
					</span>
        </div>
      </div>
      <div class="words">
        <div class="categoryImgBlock" style="background: url('resources/images/2.jpg') center; background-size: cover;">
        </div>
        <div class="wordBlock">
					<span>
						Бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-
					</span>
        </div>
      </div>
      <div class="words">
        <div class="categoryImgBlock" style="background: url('resources/images/3.jpg') center; background-size: cover;">
        </div>
        <div class="wordBlock">
				<span>Бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
					бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-
					</span>
        </div>
      </div>
      <div class="words">
        <div class="categoryImgBlock" style="background: url('resources/images/4.jpg') center; background-size: cover;">
        </div>
        <div class="wordBlock">
					<span>
						Бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-
					</span>
        </div>
      </div>
      <div class="words">
        <div class="categoryImgBlock" style="background: url('resources/images/5.jpg') center; background-size: cover;">
        </div>
        <div class="wordBlock">
					<span>
						Бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-бла-
						бла-бла-бла-бла-бла-
					</span>
        </div>
      </div>
      </div>
    </c:forEach>
    </body>
    </div>
  </div>
  <div class="title" id="contacts">
    <div class="titles">Зворотній зв’язок</div>
  </div>
  <div id="secondsection" style="background: url('resources/images/bgFeedBack.jpg')">
    <div style=" background-color: rgba(103, 47, 169, 0.31); padding: 10px">
      <div id="feedBackText">Є питання, чи пропозиції? Напишіть нам!</div>
      <form action=""id="feedBack">
        <input type="text" class="feedBack" name="username" id="username" placeholder="логін">
        <input type="email" class="feedBack" name="email" id="email" placeholder="електронна адресса">
        <input type="text" class="feedBack" name="name" id="name" placeholder="ім’я">
        <textarea id="message" class="feedBack" name="message" placeholder="повідомлення"></textarea>
        <button id="send">Надіслати</button>
      </form>
    </div>
  </div>
  <div class="title" id="about_us">
    <div class="titles">Команда</div>
  </div>
  <div id="thirdsection">
    <div class="our_people">
      <div class="avatar" style="background: url('resources/img/profile.jpg') center; background-size: cover;"></div>
      <div class="about">
        <div class="ful_names">
          Юрік Абдулаєв
        </div>
        <hr>
        <div class="role">
          Back-end developer
        </div>
      </div>
    </div>
    <div class="our_people">
      <div class="avatar" style="background: url('resources/img/profile.jpg') center; background-size: cover;"></div>
      <div class="about">
        <div class="ful_names">
          Вадимка Заверталюк
        </div>
        <hr>
        <div class="role">
          Back-end developer
        </div>
      </div>
    </div>
    <div class="our_people">
      <div class="avatar" style="background: url('resources/img/profile.jpg') center; background-size: cover;"></div>
      <div class="about">
        <div class="ful_names">
          Саньок Комісаренко
        </div>
        <hr>
        <div class="role">
          Back-end developer
        </div>
      </div>
    </div>
    <div class="our_people">
      <div class="avatar" style="background: url('resources/img/iam.jpg') center; background-size: cover;"></div>
      <div class="about">
        <div class="ful_names">
          Костька Клугман
        </div>
        <hr>
        <div class="role">
          Design, Front-end developer
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>