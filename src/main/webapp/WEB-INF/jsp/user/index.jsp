<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:container>
    <div class="xss pb-2">${search}</div>
    <div class="d-inline pb-2">
        <a class="btn" href="/user/create">Create User</a>
    </div>
    <c:set var="now" value="<%=new java.util.Date()%>" />
    <div class="notxss">${now}</div>
</t:container>