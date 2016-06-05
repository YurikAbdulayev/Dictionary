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
<%--<c:forEach items="${categoryWord}" var="sense">--%>
  ${sense.sense}//а тут хуйчанский в рот польехал
</c:forEach>
</body>
</html>
