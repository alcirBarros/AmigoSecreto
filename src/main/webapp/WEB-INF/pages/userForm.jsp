<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<t:page_template>
    <jsp:attribute name="js">
        <script src="js/modernizr.custom.63321.js"></script>
        <script type="text/javascript" src="js/jquery.dropdown.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content">
        <center>  
            <div id="container_demo" >
                <a class="hiddenanchor" id="toregister"></a>
                <a class="hiddenanchor" id="tologin"></a>
                <div id="wrapper">

                    <div id="login" class="animate form">
                        <h1> User Register Form </h1> 
                        <c:url var="userRegistration" value="saveUser.html" />
                        <form id="registerForm" modelAttribute="user" method="post" action="register">

                            <table>
                                <tr>
                                <label path="" data-icon="u">Nome</label> 
                                </tr>
                                <tr>
                                    <td>
                                        <input path="" id="usernamesignup" name="firstname" required="required" type="text" placeholder="mysuperusername690" style="width: 480px"/>
                                    </td>
                                </tr>
                            </table>

                            <table>  
                                <tr>
                                    <td>
                                        <label path="" for="emailsignup" class="youmail" data-icon="e">Email</label>   
                                        <input path="" id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com" />  
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <label path="" data-icon="u">Phone</label>   
                                        <input path="" type="phone" required="required" placeholder="99-9999-99999" />  
                                    </td>
                                </tr>

                                <tr>
                                    <td>    
                                        <p class="signin button" style="text-align: left;"> 
                                            <input type="submit" value="Register" style="width: 100px"/> 
                                        <p>
                                    </td>
                                    <td/>
                                </tr>
                            </table>
                        </form>
                    </div>  
                </div>
            </div>
        </center>  

        <script type="text/javascript">

            $(function() {

                $('#cd-dropdown').dropdown({
                    gutter: 5
                });

            });

        </script>
    </jsp:attribute>
</t:page_template>



