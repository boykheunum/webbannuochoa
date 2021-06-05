<%-- 
    Document   : giohang
    Created on : Jun 3, 2021, 3:56:07 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.sanphamModel"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <jsp:include page="layoutChung/topMenu.jsp"/>
        <div class="container bg-white rounded-top mt-5" id="zero-pad">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10 col-12 pt-3">
                    <div class="d-flex">
                        <div class="pt-1">
                            <h4>My T-shirt</h4>
                        </div>
                    </div>
                    <div class="d-flex flex-column pt-4">
                        <div>
                            <h5 class="text-uppercase font-weight-normal">shopping bag</h5>
                        </div>
                    </div>
                    <div class="d-flex flex-row px-lg-5 mx-lg-5 mobile" id="heading">
                        <div class="px-lg-5 mr-lg-5" id="produc">PRODUCTS</div>
                        <div class="px-lg-5 ml-lg-5" id="prc">PRICE</div>
                        <div class="px-lg-5 ml-lg-1" id="quantity">QUANTITY</div>
                        <div class="px-lg-5 ml-lg-3" id="total">TOTAL</div>
                    </div>
                    <!-- thong tin nhung san pham-->
                    <%
                        //int soluong1 = (int) session.getAttribute("soluong");
                        TreeMap<String, Integer> cart = (TreeMap<String, Integer>) session.getAttribute("cart");
                        if (cart == null) {
                            out.println("<h3> chưa có giỏ hàng</h3>");
                        } else {
                            float tongtien = 0;
                            for (String masp : cart.keySet()) {
                                sanphamModel sp = new sanphamModel();
                                int ketqua = CSDL.SanPham.searchSP(sp, masp);
                                if (ketqua > 0) {
                                    int soluong = cart.get(masp);
                                    float thanhtien = soluong * sp.getGiaban();
                                    tongtien += thanhtien;

                    %>

                    <div class="d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile">
                        <div class="d-flex flex-ro//images.unsplash.com/photo-152w align-items-center">
                            <div><img src="imageSP/<%=sp.getHinhanh()%>" width="150" height="150" alt="" id="image"></div>
                            <div class="d-flex flex-column pl-md-3 pl-1">
                                <div>
                                    <h6><%=sp.getTensp()%></h6>
                                </div>

                            </div>
                        </div>
                        <div class="pl-md-0 pl-1"><b><%=sp.getGiaban()%></b></div>
                        <div class="pl-md-0 pl-2"> 
                            <input type="button" class="fa fa-minus-square text-secondary">
                            <span class="px-md-3 px-1"><%=soluong%></span>
                            <%
                                session.setAttribute("soluong", soluong);
                            %>
                            <input type="button" class="fa fa-plus-square text-secondary"></span>
                        </div>
                        <div class="pl-md-0 pl-1"><b><%=thanhtien%></b></div>
                        <div class="close">&times;</div>
                    </div>
                    <%
                            }
                        }

                    %>
                    <!--ket thuc thong tin nhung san pham-->
                </div>
            </div>
        </div>
        <div class="container bg-light rounded-bottom py-4" id="zero-pad">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10 col-12">
                    <div class="d-flex justify-content-between align-items-center">
                        <div> <button class="btn btn-sm bg-light border border-dark">GO BACK</button> </div>
                        <div class="px-md-0 px-1" id="footer-font"> <b class="pl-md-4">SUBTOTAL<span class="pl-md-4"><%=tongtien%></span></b> </div>
                        <div> <button class="btn btn-sm bg-dark text-white px-lg-5 px-3">CONTINUE</button> </div>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <!-- Footer-->
        <jsp:include page="layoutChung/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>

    </body>
</html>