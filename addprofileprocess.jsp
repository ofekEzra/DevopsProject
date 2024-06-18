<!DOCTYPE html>
<html>
<head>
    <title>Add Profile Result</title>
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
        .result-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .result-container p {
            font-size: 16px;
        }
        .result-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
        .result-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <jsp:useBean id="obj" class="bean.ProfileBean"/>
        <jsp:setProperty property="*" name="obj"/>
        <%
        boolean status = ProfileDao.addProfile(obj);
        if(status){
        %>
            <p>Profile successfully added</p>
        <%
        }
        else
        {
        %>
            <p>Sorry, adding profile failed. Email might already be in use.</p>
            <a href="addprofile.jsp">Try Again</a>
        <%
        }
        %>
    </div>
</body>
</html>
