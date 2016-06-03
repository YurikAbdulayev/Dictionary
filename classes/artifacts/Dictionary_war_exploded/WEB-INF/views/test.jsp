<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Test</title>
</head>
<body>

<c:forEach items="${words}" var="word">
  <p>${word.category.name}, ${word.word}, ${word.synonyms.get(0).word}, ${word.senses.get(0).sense}</p>
</c:forEach>

</body>
</html>