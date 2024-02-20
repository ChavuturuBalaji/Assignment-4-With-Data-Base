<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <style>
        .button-container {
            text-align: center; /* Align buttons to the center */
        }

        .button-container form {
            display: inline-block; /* Make forms display inline */
            margin: 0 10px; /* Add some spacing between buttons */
        }
    </style>
</head>
<body>
<div class="button-container">
    <form action="/add">
        <input type="submit" value="Add">
    </form>
    <form action="/update">
        <input type="submit" value="Update">
    </form>
    <form action="/get">
        <input type="submit" value="Get">
    </form>
    <form action="/Employee/getall">
        <input type="submit" value="Get All">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete">
    </form>
    <form action="/deleteByName">
        <input type="submit" value="Delete By Name">
    </form>
</div>
<br>
<br/>
<c:if test="${not empty employees}">
    <h1>Employee is deleted..</h1>
    <table border="1">
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Employee Role</th>
            <th>Employee Salary</th>
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td><c:out value="${employee.getId()}"/></td>
                <td><c:out value="${employee.getName()}"/></td>
                <td><c:out value="${employee.getRole()}"/></td>
                <td><c:out value="${employee.getSalary()}"/></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty empolyees}">
    <h3>Employee not found.....</h3>
</c:if>



</body>
</html>