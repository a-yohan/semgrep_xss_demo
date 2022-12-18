<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:container>
    <h3>Create User</h3>
    <form:form id="create" modelAttribute="userDto" action="/user/create" method="post" enctype="application/x-www-form-urlencoded">
        <div class="pb-2">
            <label for="name" style="width: 4rem;">Name</label>
            <input type="text" name="name" id="name">
            <form:errors path="name" />
        </div>
        <div class="pb-2">
            <label for="address" style="width: 4rem;">Address</label>
            <input type="text" name="address" id="address">
        </div>
        <button type="submit">Submit</button>
    </form:form>
</t:container>