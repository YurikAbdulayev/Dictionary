<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/category.css">
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/windowScript.js"></script>
    <link rel="stylesheet" href="/resources/css/windowStyle.css">
</head>
<body>
<div id="imageBlock" style="background: url('/resources/images/6.jpg') center;">
    <div id="titleBlock">
        <header>
            <a class="link" href="index.html">Головна</a>
        </header>
        <h1>Бла</h1>
        <div id="senseBlock">
            <c:forEach items="${categoryWords}" var="word">
                <UL>
                    <LI><a href="/sense/${word.id}"> ${word.word} </a>
                </UL>
            </c:forEach>
        </div>
    </div>
</div>
<div id="listCategoryBlock">
    <ul>
        <li>
            <a href="word.html">gfbsjbgjhdsjhdsf</a>
        </li>
    </ul>
</div>
</body>
</html>