<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="./css/loginsignup.css">
    <link rel="Shortcut icon" href="./resources/img/eat1.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
 
    <div id="page" class="site login-show">

        <div class="container">
            <div class="wrapper"> 
                <div class="login">
                    <div class="content-heading">
                    <div class="y-style">
                        <div class="logo"><a href="#"><span></span></a></div>
                        <div class="welcome">
                            <h2>Welcome  <br> Back!</h2>
                            <p>Get Started</p>
                        </div>
                    </div>
                    </div>
                    <div class="content-form">
                        <div class="y-style">
                            <form action="loginServlet" method="get">
                                <p>
                                    <label>Email</label>
                                    <input  type="email" name="loginemail" placeholder="Enter Your Email" required
                                    pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" >
                               </p>
                               <p>
                                <label>Password</label>
                                <input type="password" name="loginpass"  placeholder="Enter Your Password" required
                                pattern=".{8,}" title="Atleast 8 character">
                                
                               </p>
                               <!-- <p class="check">
                                   <input type="checkbox" id="remember" >
                                <label for="remember">Remember Me </label>
                           </p> -->
                           <p class="forgot"><a href="forgot.html">Forgot Password?</a></p>
                           <p>
                            <button type="submit">Login</button>
                           </p>
                        </form>

                           <div class="after-form">
                            <p>Dont't have an account?</p>
                            <a href="signup.jsp" class="t-signup">Signup</a>
                           </div>
                        </div>
                    </div>
                </div> <!--Login form-->
                
                
                 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script src="./js/loginsignjs.js"></script>
    
    </body>
</html>

