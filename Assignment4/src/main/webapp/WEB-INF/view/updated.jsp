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
    <form action="/deleteByName">
        <input type="submit" value="Delete By Name">
    </form>
</div>

<c:if test="${not empty empUpdate}">
    <h1> Employee updated</h1>
    Employee id: ${empUpdate.id}<p></p>
    Employee Name: ${empUpdate.name}<p></p>
    Employee Role: ${empUpdate.role}<p></p>
    Employee Salary: ${empUpdate.salary}<p></p>
</c:if>

</body>
</html>
