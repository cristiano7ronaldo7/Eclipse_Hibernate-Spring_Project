<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css"
 rel="stylesheet"
 href="${pageContext.request.contextPath}/resources/css/style.css}"/>
<title> list-Customers</title>>
</head>
<body>
              <div id="wrapper">
                  <div id="header">
                    <h2> CRM- Customer Relationship Managare</h2>
                  </div>
              </div>


             <div id="container">
                <div id ="contents"> 
                   <table>
                           <tr>
                    <th> First Name </th>
                    <th> Last Name </th>
                    <th> Email</th>
                    </tr>
                    
                       <c:forEach var ="tempCustomer" items="${customers}">
                        <tr>
                          <td> ${tempCustomer.firstName}</td>
                          <td> ${tempCustomer.lastName}</td>
                           <td> ${tempCustomer.email}</td>
                        </tr>
                        </c:forEach>
                        </table>
                </div>
                </div>
                
</body>
</html>