<%-- 
    Document   : jstlFormat1
    Created on : 15 May 2024, 4:43:04 pm
    Author     : ARIF HAIKAL
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jstlFormat1</title>
    <style>
    .formatted-output {
        color: #C2002D;
    }
</style>
</head>
<body>
    <h1>Using JSTL formatting tag for formatting</h1>
    
    <c:set var="total" value="2880.4638"/>
    <p class="formatted-output">Number to be formatted is <c:out value="${total}"/></p> 
    <p class="formatted-output">Formatting number as currency with currency code: <fmt:formatNumber type="currency" currencyCode="MYR" value="${total}"/></p> 
    <p class="formatted-output">Formatting number to the nearest 2 integer digits: <fmt:formatNumber type="number" maxIntegerDigits="2" value="${total}"/></p>
    <p class="formatted-output">Formatting number by grouping: <fmt:formatNumber type="number" groupingUsed="true" value="${total}"/></p>
    <p class="formatted-output">Formatting number to 3 decimal places: <fmt:formatNumber type="number" minFractionDigits="3" maxFractionDigits="3" value="${total}"/></p>
    <p class="formatted-output">Formatting number as percentage: <fmt:formatNumber type="percent" value="${total}"/></p>
</body>
</html>