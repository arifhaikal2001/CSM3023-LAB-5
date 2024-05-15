<%-- 
    Document   : brokerage
    Created on : 16 May 2024, 1:33:30 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.com.processBrokerage"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Byfixfear Trading Broker</title>
    </head>
    <body>
        <h1>Welcome to Byfixfear Trading Broker!</h1>
        <%
            int shares = 800;
            double price = 10.50;
            //instantiate broker object
            processBrokerage broker = new processBrokerage(shares, price);
        %>
        
        <c:set var="amount" value="<%=broker.getAmountB(shares, price)%>" />
        <c:set var="commission" value="<%=broker.getCommission(shares, price)%>" />
        <c:set var="total" value="<%=broker.getAmountA(shares, price)%>" />
        
        <p>Amount (without commission): RM <fmt:formatNumber type="number" minFractionDigits="2" value="${amount}" /></p>
        <p>Commission charged: RM <fmt:formatNumber type="number" minFractionDigits="2" value="${commission}" /></p>
        <p>Total amount paid (commission included): RM <fmt:formatNumber type="number" minFractionDigits="2" value="${total}" /></p>
    </body>
</html>