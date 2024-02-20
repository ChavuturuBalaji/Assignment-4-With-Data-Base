<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

</head>
<body>
<!DOCTYPE html>

<style>
    .button-container {
        text-align: center; /* Align buttons to the center */
    }

    .button-container form {
        display: inline-block; /* Make forms display inline */
        margin: 0 10px; /* Add some spacing between buttons */
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

<form:form modelAttribute="empUpd" method="post" action="/Employee/update">
    <table>
        <tr>
            <td> Employee ID</td>
            <td><form:input path="id" readonly="true" value ="${empUpd.getId()}"/></td>
        </tr>
        <tr>
            <td> Employee Name</td>
            <td><form:input path="name" value = "${empUpd.getName()}" /></td>
        </tr>
        <tr>
            <td> Employee Role</td>
            <td><form:input path="role" value = "${empUpd.getRole()}"/></td>
        </tr>
        <tr>
            <td> Employee Salary</td>
            <td><form:input path="salary" type="number" value = "${empUpd.getSalary()}"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="update"></td>
        </tr>
    </table>
</form:form>

</body>
</html>