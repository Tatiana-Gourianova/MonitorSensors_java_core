<%--@elvariable id="sensorsList" type="java.util.ArrayList"--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/uselocale.jsp" %>
<html>
<head>
    <title><fmt:message key="title.show.all.user.page"/></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<%@ include file="../include/navbar.jsp" %>
<%@ include file="../include/home.jsp" %>


<div class="container-fluid">
    <div class="col-md-6 col-md-offset-1">
        <table class="table table-condensed table-bordered">
            <tr>
                <td align="center" style="border-color: #dae5ff"><fmt:message key="table.sensor.id"/></td>
                <td align="center" style="border-color: #dae5ff"><fmt:message key="table.sensor.title"/></td>
                <td align="center" style="border-color: #dae5ff"><fmt:message key="table.sensor.model"/></td>
                <%-- <td align="center" style="border-color: #dae5ff"><fmt:message key="table.sensor.range"/></td>
                <td align="center" style="border-color: #dae5ff"><fmt:message key="table.sensor.type"/></td>
--%>
            </tr>
            <c:forEach items="${sensorsList}" varStatus="сounter">
                <tr>
                    <td align="center" style="border-color: #dae5ff">${sensorsList[сounter.count-1].id}</td>
                    <td align="center" style="border-color: #dae5ff">${sensorsList[сounter.count-1].name}</td>
                    <td align="center" style="border-color: #dae5ff">${sensorsList[сounter.count-1].model}</td>

                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="/controller?action=show_admin_page" class="btn btn-default"><fmt:message key="continue"/></a>
    </div>
</div>
<br/>
<br/>
<br/>


<%@ include file="../include/footer.jsp" %>
</body>
</html>



