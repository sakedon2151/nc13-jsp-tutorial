<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>scriptlet</title>
</head>
<body>
    Scriptlet은 우리가 다양한 방법으로 사용이 가능하다.
    그 중 하나는 바로 다음과 같이 스크립틀릿 안에 for문 혹은 if문을 넣고
    웹에 출력할 내용을 분리하는 방법이다.

    Java 코드에 해당하는 부분만 < % % > 로 감싸는 방법
    <hr>
<%
        int number = -10;
        if (number >= 1) {
%>
            <h1>자연수 입니다.</h1>
<%
        } else {
%>
            <h1>자연수가 아닙니다.</h1>
<%
        }
        for (int i = 0; i < 10; i++) {
%>
            <%=i%>
<%
        }
%>
</body>
</html>
