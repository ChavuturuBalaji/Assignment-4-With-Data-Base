<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<style>
    .button-container {
        text-align: center;
    }

    .button-container form {
        display: inline-block;
        margin: 0 10px;
    }
</style>

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
    <form action="/all">
        <input type="submit" value="Get All">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete">
    </form>
</div>

<c:if test="${not empty empGet}">
    <h1> Employee found</h1>
    Employee id: ${empGet.id}<p></p>
    Employee Name: ${empGet.name}<p></p>
    Employee Role: ${empGet.role}<p></p>
    Employee Salary: ${empGet.salary}<p></p>
</c:if>
<c:if test="${empty empGet}">
    <h1>Employee not found</h1>
</c:if>


</body>
</html>
