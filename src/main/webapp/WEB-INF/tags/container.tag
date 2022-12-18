<%@tag description="Container" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:wrapper>
    <t:navbar></t:navbar>
    <div>
        <div class="container bg-white">
            <div class="row">
                <jsp:doBody/>
            </div>
        </div>
    </div>
</t:wrapper>