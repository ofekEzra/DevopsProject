<!DOCTYPE html>
<html>
<head>
    <title>Add Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .form-container h2 {
            margin-top: 0;
        }
        .form-container input[type="text"], .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .form-container input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Profile</h2>
        <form action="addprofileprocess.jsp">
            Name: <input type="text" name="name"/><br/><br/>
            Email: <input type="text" name="email"/><br/><br/>
            Bio: <textarea name="bio"></textarea><br/><br/>
            <input type="submit" value="Add Profile"/>
        </form>
    </div>
</body>
</html>
