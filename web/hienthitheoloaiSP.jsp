<%-- 
    Document   : hienthiSPKH
    Created on : Jun 27, 2021, 5:48:52 PM
    Author     : quyenlh
--%>

<%-- 
    Document   : hienthiSP
    Created on : May 6, 2021, 1:09:21 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.sanphamModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><!DOCTYPE html>
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
        <jsp:include page="layoutChung/topMenu.jsp" />

        <!-- Page header-->

        <!-- Portfolio Section-->
        <section class="py-5 bg-light">
            <div class="container">
                <h2 class="mb-4">Sản phẩm </h2>
                <div class="row">
                    <%
                        String maloaisp = (String) request.getAttribute("maloaisp");
                        int numPage = (int) request.getAttribute("endP");
                        int num = (int) request.getAttribute("num");
                        Vector<sanphamModel> ds = new Vector<sanphamModel>();
                        int kq = CSDL.SanPham.phanTrangLoaiSP(num, ds, maloaisp);
                        if (kq == 1) {
                            for (sanphamModel sp : ds) {
                                String checkImage = "noImage.png";
                                if (sp.getHinhanh().equals("") != true) {
                                    checkImage = sp.getHinhanh();
                                }
                    %>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="card h-100">
                            <a href="hienthichitietSP.jsp?masp=<%=sp.getMasp()%>"><img class="card-img-top" width="348px" height="348px" src="imageSP/<%=checkImage%>" alt="..." /></a>
                            <div class="card-body">
                                <h4 class="card-title"><a href="hienthichitietSP.jsp?masp=<%=sp.getMasp()%>"><%=sp.getTensp()%></a></h4>
                                <!--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>-->
                                <p class="card-text"><%=sp.getGiaban()%></p>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
                <nav aria-label="Page navigation example" >
                    <ul class="pagination">

                        <li class="page-item"><a class="page-link" id="Previous" href="#">Previous</a></li>
                            <%
                                for (int i = 1; i <= numPage; i++) {
                            %>
                        <li class="page-item"><a class="page-link" id="sotrang" value="<%=i%>" href="phantrangUserSP?index=<%=i%>"><%=i%></a></li>
<!--                        <li class="page-item" id="sotrang" value="<%=i%>"><a class="page-link"  href="#<%=i%>"><%=i%></a></li>-->
                        <%}%>
                        <li class="page-item"><button class="page-link" id="Next">Next</button></li>
                    </ul>
                </nav>
            </div>
        </section>
        <aside class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-8"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p></div>
                    <div class="col-md-4"><a class="btn btn-lg btn-secondary btn-block" href="#!">Call to Action</a></div>
                </div>
            </div>
        </aside>
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
