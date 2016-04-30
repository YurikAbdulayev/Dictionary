<%--
  Created by IntelliJ IDEA.
  User: anri
  Date: 30.04.16
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test</title>
</head>
<body>

  <c:forEach items="${words}" var="word">
    <p>${word.category.name}, ${word.word}</p>
  </c:forEach>

</body>
</html>
