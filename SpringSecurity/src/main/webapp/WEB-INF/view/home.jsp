<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <body>
        <h3> Welcome </h3>
        <hr />
            User : <security:authentication property="principal.username" /> <br/>
            Role : <security:authentication property="principal.authorities" />
        <hr />
        <security:authorize access="hasRole('MANAGER')">
            <p>
                <a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
                (Only for Manager Peeps)
            </p>
        </security:authorize>
        <security:authorize access="hasRole('ADMIN')">
            <p>
                <a href="${pageContext.request.contextPath}/systems">IT Systems meeting</a>
                (Only for Admin Peeps)
            </p>
        </security:authorize>
        <hr/>
        <p> Try logging out </p>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <button> Logout </button>
        </form:form>
    </body>
</html>