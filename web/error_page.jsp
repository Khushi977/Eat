
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./css/error_page.css">
        <title>Sorry ! something went wrong...</title>
        
    </head>
    
    <body>
      <div class="error-page-img"><img src="./resources/img/error-404.png"></div>
      <h3 class="error-page-h3">Sorry!! Something Went Wrong :( </h3>
      <%= exception %>
      <div><button class="error-page-btn"><a href="user_profile.jsp">Home</a></button></div>
      
    </body>
</html>
