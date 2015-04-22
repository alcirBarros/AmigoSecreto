<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%> 
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<t:page_template>
    <jsp:attribute name="content">
        <center style="position: relative">  
            <div  >
                <div style="color: teal; font-size: 30px">User Details</div>  
                <c:if test="${!empty userList}">  
                    <table border="1" bgcolor="black" width="700px">  
                        <thead>
                            <tr style="background-color: teal; color: white; text-align: center;"  
                                height="40px">  
                                <td>Nome</td>  
                                <td>Email</td>  
                                <td>Phone</td>
                            </tr>  
                        </thead>
                        <tbody>
                            <c:forEach items="${userList}" var="user">  
                                <tr  
                                    style="background-color: white; color: black; text-align: center;"  
                                    height="30px">  

                                    <td class="user-name">
                                    </td>  
                                    <td class="user-name">
                                    </td>  
                                    <td class="user-name">
                                    </td>  
                                </tr>  
                            </c:forEach>  
                        </tbody>
                    </table>  
                </c:if>  
                <a href="userForm">Click Here to add new User</a>   <br /> 
            </div>
        </center>  
    </jsp:attribute>
</t:page_template>