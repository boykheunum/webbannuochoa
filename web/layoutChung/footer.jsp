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
                                    <strong>????ng k?? nh???n b???n tin c???a ch??ng t??i</strong>
                                </p>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-5 col-12">
                                <!-- Email input -->
                                <div class="form-outline form-white mb-4">
                                    <input type="email" id="form5Example2" class="form-control" />
                                    <label class="form-label" for="form5Example2">?????a ch??? Email</label>
                                </div>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-auto">
                                <!-- Submit button -->
                                <button type="submit" class="btn btn-outline-light mb-4">
                                    ????ng k??
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
                        N?????c hoa nh?? m???t d???u ngo???c ????n, m???t kho???nh kh???c c???a t??? do, b??nh y??n, t??nh y??u v?? g???i c???m gi???a nh???ng x??o tr???n c???a cu???c s???ng hi???n ?????i
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
                                    <a href="#!" class="text-white">?????a ch???: <%=tt.getDiachi()%></a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Email: <%=tt.getEmail()%></a>
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
                            <h5 class="text-uppercase">Ch??nh s??ch - Tr??? gi??p</h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">H?????ng d???n s??? d???ng n?????c hoa</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">H?????ng d???n mua h??ng</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">Ph????ng th???c thanh to??n</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white"></a>
                                </li>
                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Tin t???c</h5>

                            <ul class="list-unstyled mb-0">

                                <li>
                                    <a href="#!" class="text-white">Tin t???c v??? h??ng Jillian</a>
                                </li>

                                <li>
                                    <a href="#!" class="text-white">Tin t???c v??? h??ng Gucci</a>
                                </li>

                                <li>
                                    <a href="#!" class="text-white">Tin t???c v??? h??ng Dior</a>
                                </li>

                            </ul>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">PAGE FACEBOOK </h5>

                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">???nh Link</a>
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
