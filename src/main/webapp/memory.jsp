<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memory</title>
</head>
<body>
    -톰캣의 메모리 종류-
    톰캣도 하나의 서버, 즉 컴퓨터이기 때문에
    내부적으로 메모리가 준비되어있는데 크게 3가지 종류가 있다.
    <br>
    1. 페이지: 해당 페이지에서만 변수 혹은 값이 유지가 된다.<br>
    2. request: 이 페이지로 이동 될 때 전 페이지에서 보내준 값들. 이 페이지가 끝나면 사라진다.<br>
    3. session: 사용자가 연결될 때 마다 값을 저장할 수 있는 메모리. 만약 사용자가 페이지를 열어두고
    20분간 아무것도 하지 않으면 session은 종료되어 메모리에 저장된 값들도 삭제가 된다.
    <hr>

    <%
        // session에 값 저장해보기
        // session에 값을 저장할 때에는 map 처럼 String 키와 Object 벨류가 들어가도록
        // 되어있다.

        session.setAttribute("id", 4);
    %>

    중요!! form 태그의 경우, method 어트리뷰트를 post로 설정하면
    주소창에 값이 노출되지 않는다.

    <form action="memory2.jsp" method="post">
        <input type="text" name="name" placeholder="성명">
        <input type="number" name="age" placeholder="연령">
        <input type="submit" value="입력">
    </form>

</body>
</html>
