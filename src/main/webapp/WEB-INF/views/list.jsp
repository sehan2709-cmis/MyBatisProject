<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO,java.util.*"%>
<%@ page import="com.spring.board.BoardDAO" %>
<%@ page import="com.spring.board.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>BOARD</title>
        <script>
            function delete_ok(id){
                var a = confirm("delete for real?");
                if(a) location.href='deleteok/' + id;
            }
        </script>
    </head>

    <body>
        <h1>list</h1>
        <br/><button type="button" onclick="location.href='../login/logout'">logout</button>

        <table id="list" width="90%" border="1">
            <tr>
                <th>id</th>
                <th>title</th>
                <th>writer</th>>
                <th>content</th>
                <td>regdate</td>
                <th>edit</th>
                <th>delete</th>
            </tr>

        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.title}</td>
                <td>${u.writer}</td>
                <td>${u.content}</td>
                <td>${u.regdate}</td>
                <td><a href="editform/${u.seq}">edit</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
            </tr>
        </c:forEach>
        </table><br/>

        <button type="button" onclick="location.href='add'">new post</button>
    </body>
</html>
