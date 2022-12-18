<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:container>
    <h3>Edit User</h3>
    <form action="/user/edit/${user.id}" method="post" enctype="application/x-www-form-urlencoded">
        <div class="pb-2">
            <label for="name" style="width: 4rem;">Name</label>
            <input type="text" name="name" id="name" value="${user.name}">
        </div>
        <div class="pb-2">
            <label for="address" style="width: 4rem;">Address</label>
            <input type="text" name="address" id="address" value="${user.address}">
        </div>
        <button type="submit">Submit</button>
    </form>
</t:container>