<%-- 
    Document   : registerTraining
    Created on : 16 May 2024, 1:01:07 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.com.TrainingRegister"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register for Training</title>
       <style>
            label {
                display: inline-block; 
                margin-right: 10px;
                width: 150px;
            }
        </style>  
    </head>
    <body>
        <h1>Register IT Training</h1>
        
        <form action="processTraining.jsp" method="post">
            <fieldset>
                <legend>Training Registration</legend>
                <label for="icno">IC No </label>
                <input type="text" id="icno" name="icno" placeholder="E.g 124578-08-0564" required>
                <br><br>
                <label for="name">Name </label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
                <br><br>
                
                <label for="type">Type of Training</label>
                <select id="type" name="type" required>
                    <option value="1">C++ training</option>
                    <option value="2">Java for beginner</option>
                    <option value="3">HTML5</option>
                    <option value="4">Java EEE</option>
                    <option value="5">Android Programming</option>
                </select>
                <br><br>
                
                <label for="number">No of Pax </label>
                <input type="number" id="number" name="number" placeholder="No of Pax" required>
                <br><br>
                
                <label for="student">Student</label>
                <input type="radio" id="studentYes" name="student" value="1" required>
                <label for="studentYes">Yes</label>
                <input type="radio" id="studentNo" name="student" value="0" required>
                <label for="studentNo">No</label>
                <br><br>
                
                <button type="submit">Submit</button>
                <button type="reset">Cancel</button>
            </fieldset>
            <br>
        </form>
    </body>
     <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>