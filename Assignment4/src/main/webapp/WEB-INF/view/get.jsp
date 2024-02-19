<!DOCTYPE html>
<html>
<head>
    <style>
        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .button-container form, form.align-center {
            display: inline-block;
            margin: 0 10px;
        }

        form.align-center {
            text-align: center;
        }

        .form-group {
            text-align: center;
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
    <form action="/all">
        <input type="submit" value="Get All">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete">
    </form>
</div>
<form action="/Employee/get" class="align-center">
    <div class="form-group">
        <label for="id">Enter ID:</label><br>
        <input type="number" id="id" name="id"><br>
        <br>
        <input type="submit" value="Get">
    </div>
</form>
</body>
</html>
