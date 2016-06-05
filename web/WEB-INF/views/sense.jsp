<%--
  Created by IntelliJ IDEA.
  User: Вадимка
  Date: 05.06.2016
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:forEach items="${word.senses}" var="sense">
  ${word.word}
  - це ${sense.sense}
</c:forEach>
</body>
</html>
