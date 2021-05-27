<%-- 
    Document   : hienthichitietSP
    Created on : May 6, 2021, 3:36:27 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.sanphamModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="content/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="content/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="layoutChung/topMenu.jsp" />
        <!-- Page Content-->
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <h1 class="my-4">Shop Name</h1>
                    <div class="list-group">
                        <a class="list-group-item active" href="#!">Category 1</a>
                        <a class="list-group-item" href="#!">Category 2</a>
                        <a class="list-group-item" href="#!">Category 3</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <%
                        String masp = request.getParameter("masp");
                        sanphamModel sp = new sanphamModel();
                        int kq = CSDL.SanPham.searchSP(sp, masp);
                        if (kq == 1) {

                    %>
                    <div class="card mt-4">
                        <img class="card-img-top img-fluid" src="imageSP/<%=sp.getHinhanh()%>" alt="..." />
                        <div class="card-body">
                            <h3 class="card-title"><%=sp.getTensp()%></h3>
                            <h4><%=sp.getGiaban()%></h4>
                            <p class="card-text"><%=sp.getMota()%></p>

                        </div>
                    </div>
                    <%}%>

                </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>
        <script>
            $(document).ready(function () {
                $('#tendangnhap').keyup(function () {
                    $.ajax({
                        method: 'POST',
                        url: 'checkUserName',
                        data: {
                            masp: $('#tendangnhap').val()
                        },
                        success: function (res) {
                            var messBox = document.getElementById('messBox');
                            var messBoxErr = document.getElementById('messBoxErr');
                            if (res == 1) {
                                messBox.innerHTML = " ";
                                messBoxErr.innerHTML = "Tên đăng nhập đã tồn tại";
                                arlet('Tên đăng nhập đã tồn tại');
                            } else {
                                messBoxErr.innerHTML = " ";
                                messBox.innerHTML = "tên đăng nhập phù hợp";
                            }
                        }
                    });
                });
            });
        </script>
    </body>
</html>