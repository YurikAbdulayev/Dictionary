<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="link" href="/dictionary">Головна</a>
        </header>
        <%--<h1><a:forEach items="${category}" var="cat">--%>
                <%--&lt;%&ndash;${cat.name}&ndash;%&gt;--%>
            <%--</a:forEach>--%>
        <%--</h1>--%>
        <h1>!!!!!!!1
            <a:forEach items="${category}" var="cat">
                ${cat.name}
            </a:forEach>
            !!!!!!!1
        </h1>
        <div id="senseBlock">

        </div>
    </div>
</div>
<div id="listCategoryBlock">
    !!!!!!!!!!11
    <a:forEach items="${cat}" var="cat">


        ${cat.id}</a>

    </a:forEach>
    !!!!!!!!!!!!1
            <c:forEach items="${categoryWords}" var="word">
                <UL>
                       <%--!!!! ${}!!!--%>
                    <LI><a class="links" href="/sense/${word.id}"> ${word.word} </a>
                </UL>
            </c:forEach>
</div>
</body>
</html>