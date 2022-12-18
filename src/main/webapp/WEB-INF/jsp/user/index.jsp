<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:container>
    <div class="d-inline pb-2">
        <a class="btn" href="/user/create">Create User</a>
    </div>
    <div class="table-responsive mt-4">
        <table class="table table-striped table-hover table-sm ">
            <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="u">
                <tr>
                    <td>${u.name}</td>
                    <td>${u.address}</td>
                </tr>
            </c:forEach>
            </tbody>

        </table>
    </div>
    <c:set var="now" value="<%=new java.util.Date()%>" />
    <div class="notxss">${now}</div>
</t:container>