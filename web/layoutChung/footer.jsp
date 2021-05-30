<%-- 
    Document   : footer
    Created on : May 24, 2021, 4:21:58 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.phieuGiamGiaModel"%>
<%@page import="Model.thongTinCuaHangModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <!-- Footer -->
        <footer class="bg-dark text-center text-white">
            <!-- Grid container -->
            <div class="container p-4">
                <!-- Section: Social media -->
                <section class="mb-4">
                    <!-- Facebook -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-facebook-f"></i
                        ></a>

                    <!-- Twitter -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-twitter"></i
                        ></a>

                    <!-- Google -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-google"></i
                        ></a>

                    <!-- Instagram -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- Linkedin -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-linkedin-in"></i
                        ></a>

                    <!-- Github -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-github"></i
                        ></a>
                </section>
                <!-- Section: Social media -->

                <!-- Section: Form -->
                <section class="">
                    <form action="">
                        <!--Grid row-->
                        <div class="row d-flex justify-content-center">
                            <!--Grid column-->
                            <div class="col-auto">
                                <p class="pt-2">
                                    <strong>Đăng ký nhận bản tin của chúng tôi</strong>
                                </p>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-5 col-12">
                                <!-- Email input -->
                                <div class="form-outline form-white mb-4">
                                    <input type="email" id="form5Example2" class="form-control" />
                                    <label class="form-label" for="form5Example2">Địa chỉ Email</label>
                                </div>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-auto">
                                <!-- Submit button -->
                                <button type="submit" class="btn btn-outline-light mb-4">
                                    Đăng ký
                                </button>
                            </div>
                            <!--Grid column-->
                        </div>
                        <!--Grid row-->
                    </form>
                </section>
                <!-- Section: Form -->

                <!-- Section: Text -->
                <section class="mb-4">
                    <p>
                        Nước hoa như một dấu ngoặc đơn, một khoảnh khắc của tự do, bình yên, tình yêu và gợi cảm giữa những xáo trộn của cuộc sống hiện đại
                    </p>
                </section>
                <!-- Section: Text -->

                <!-- Section: Links -->
                <section class="">
                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Lidaperfume</h5>
                            <%
                                Vector<thongTinCuaHangModel> ds = new Vector<thongTinCuaHangModel>();
                                int kq = CSDL.thongtincuahang.listTT(ds);
                                if (kq == 1) {

                                    for (thongTinCuaHangModel tt : ds) {
                            %>
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">Địa chỉ:<%=tt.getDiachi()%></a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Email:<%=tt.getEmail()%></a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Hostline: <%=tt.getSdtcuahang()%></a>
                                </li>

                            </ul>
                            <%}%>
                            <%}%>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Chính sách - Trợ giúp</h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">Hướng dẫn sử dụng nước hoa</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Hướng dẫn mua hàng</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Phương thức thanh toán</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white"></a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Tin tức</h5>

                            <ul class="list-unstyled mb-0">

                                <li>
                                    <a href="#!" class="text-white">Tin tức về hãng Jillian</a>
                                </li>

                                <li>
                                    <a href="#!" class="text-white">Tin tức về hãng Gucci</a>
                                </li>

                                <li>
                                    <a href="#!" class="text-white">Tin tức về hãng Dior</a>
                                </li>

                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">PAGE FACEBOOK </h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">Ảnh Link</a>
                                </li>

                            </ul>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->
                </section>
                <!-- Section: Links -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">

            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </body>
</html>
