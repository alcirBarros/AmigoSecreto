<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>    
<div class="library-top" >
    <!-- For login user -->
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" 
               name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>
    <div class="clr">
        <span class="hinge">
            <a href="home">
                <strong>Back to the Home</strong>
            </a>
        </span>
        <span class="right">
            <c:choose>
                <c:when test="${pageContext.request.userPrincipal.name != null}">
                    <strong><a href="javascript:formSubmit()">Welcome : ${pageContext.request.userPrincipal.name} |  Logout</a></strong>
                </c:when>
                <c:otherwise>
                    <a href="login">
                        <strong>&laquo; Click here </strong>for login
                    </a>
                </c:otherwise>
            </c:choose>
        </span>
    </div>
</div>
<header>
    <h1>FuturoWeb<span>Spring</span></h1>
    <nav class="library-demos">
        <a href="userList" class="current-demo">Amigos(a)</a>
        <a href="bookList" >Sorteio</a>
    </nav>
</header>