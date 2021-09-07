<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>
            Login Page
        </title>
        <style>
            .failed{
                color: red;
            }
        </style>
    </head>
    <body>
        <h3> Login </h3>
        <hr/>
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
            <c:if test="${param.error != null}">
                <i class="failed"> Sorry! Invalid Username/Password </i><br/>
            </c:if>
            <p> Username : <input type="text" name="username" /></p>
            <p> Password : <input type="password" name="password" /></p>
            <button> Login </button>
        </form:form>
    </body>
</html>