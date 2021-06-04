<%-- 
    Document   : hienthichitietSP
    Created on : May 6, 2021, 3:36:27 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.sanphamModel"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cửa Hàng Nước Hoa</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="content/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="content/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
    <jsp:include page="layoutChung/topMenu.jsp"/>
    <!-- Page Content-->
    <section class="py-5">
        <div class="container">
            <%
                String id = request.getParameter("masp");
                sanphamModel sp = new sanphamModel();
                int kq = CSDL.SanPham.searchSP(sp, id);
                if (kq == 1) {
                    String checkImage = "noImage.png";
                    if (sp.getHinhanh().equals("") != true) {
                        checkImage = sp.getHinhanh();
                    }
            %>
            <h1>
                Portfolio Item
                <small>Subheading</small>
            </h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Portfolio Item</li>
            </ol>
            <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">

                    <div id="mdb-lightbox-ui"></div>

                    <div class="mdb-lightbox">

                        <div class="row product-gallery mx-1">

                            <div class="col-12 mb-0">
                                <figure class="view overlay rounded z-depth-1 main-img">
                                    <img src="imageSP/<%=checkImage%>"
                                         class="img-fluid z-depth-1" width="502px" height="581.89px">
                                </figure>

                            </div>

                        </div>

                    </div>

                </div>
                <form class="col-md-6" method="post" action="cart">
                    <h5><%=sp.getTensp()%></h5>
                    <p class="mb-2 text-muted text-uppercase small">Shirts</p>
                    <p><span class="mr-1"><strong>Giá: <%=sp.getGiaban()%></strong></span></p>
                    <input type="hidden" id="giaban" name="giaban" value="<%=sp.getGiaban()%>">
                    <input type="hidden" id="masp" name="masp" value="<%=sp.getMasp()%>">
                    <p><span class="mr-1"><strong>Mô tả: </strong></span></p>
                    <p class="pt-1"><%=sp.getMota()%></p>
                    <%}%>
                    <hr>
                    <div class="table-responsive mb-2">
                        <table class="table table-sm table-borderless">
                            <tbody>
                                <tr>
                                    <td class="pl-0 pb-0 w-25">Số lượng: <%=sp.getSoluong()%></td>
                                </tr>
                                <tr>
                                    <td class="pl-0">
                                        <div class="def-number-input number-input safari_only mb-0">
                                            <input class="quantity" min="0" name="soluongmua" value="1" type="number">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <button type="submit" class="btn btn-light btn-md mr-1 mb-2" style="background-color: #3339ef"><i
                            class="fas fa-shopping-cart pr-2"></i>Thêm vào giỏ hàng</button>
                </form>
            </div>
        </div>

    </section>
    <hr class="my-0" />


    <!-- Footer-->
    <jsp:include page="layoutChung/footer.jsp" />
    <!-- Bootstrap core JS-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>


