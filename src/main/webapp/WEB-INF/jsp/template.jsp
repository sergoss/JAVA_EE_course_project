<%--
  Created by IntelliJ IDEA.
  User: zigau
  Date: 05.08.2018
  Time: 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=request.getAttribute("title") %></title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <div class="container-main">
        <div class="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="main.jsp"><%=request.getAttribute("title") %></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="main">Main<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="catalog">Catalog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product">Product</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="order">Order</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <% if (request.getAttribute("url") != null) {
                String s = (String) request.getAttribute("url");
                if (s != null) {
                    out.flush();
                    request.getRequestDispatcher(s).include(request, response);
                }
            }
            %>
        </div>
        <footer class="section footer-classic context-dark bg-image" style="background: #f8f9fa;">
            <div class="container">
                <div class="row row-30">
                    <div class="col-md-4 col-xl-5">
                        <div class="pr-xl-4">
                            <!-- Rights-->
                            <p class="rights"><span>©  </span><span class="copyright-year">2018</span><span> </span><span>. </span><span>All Rights Reserved.</span></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h5>Contacts</h5>
                        <dl class="contact-list">
                            <dt>Address:</dt>
                            <dd>Saint-Petersburg</dd>
                        </dl>
                        <dl class="contact-list">
                            <dt>email:</dt>
                            <dd><a href="mailto:#">serg.mihalew@yandex.ru</a></dd>
                        </dl>
                        <dl class="contact-list">
                            <dt>phones:</dt>
                            <dd><a href="tel:#">+7 911 900 00 00</a> <span>or</span> <a href="tel:#">+7 812 000 00 00</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="col-md-4 col-xl-3">
                        <h5>Links</h5>
                        <ul class="nav-list">
                            <li><a href="main">Main</a></li>
                            <li><a href="catalog">Catalog</a></li>
                            <li><a href="product">Product</a></li>
                            <li><a href="cart">Cart</a></li>
                            <li><a href="order">Order</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row no-gutters social-container">
                <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
                <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>Instagram</span></a></div>
                <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>Twitter</span></a></div>
                <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>Google</span></a></div>
            </div>
        </footer>
    </div>




    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
<% out.flush();%>