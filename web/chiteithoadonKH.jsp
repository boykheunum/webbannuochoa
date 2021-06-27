<%-- 
    Document   : chiteithoadonKH
    Created on : Jun 27, 2021, 11:55:02 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nguoiDungModel"%>
<%@page import="Model.chiTietHoaDonModel"%>
<%@page import="java.util.Vector"%>
<%@page import="Model.hoaDonModel"%>
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
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
        crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="content/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="layoutChung/topMenu.jsp" />
        <!-- Page Content-->
        <section class="py-5">
            <div class="container">
                <!-- Page Heading/Breadcrumbs-->
                <h1>
                    Thông tin đơn hàng

                </h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Thông tin đơn hàng</li>
                </ol>
                <div class="card my-4">
                    <h5 class="card-header">Chi tiết đơn hàng</h5>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Giá bán</th>
                                    <th scope="col">Thành tiền</th>
                                </tr>
                            </thead>
                            <%
                                int mahd = Integer.parseInt(request.getParameter("mahd"));
                                Vector<chiTietHoaDonModel> ds = new Vector<chiTietHoaDonModel>();
                                int chitiethoadon = CSDL.chitiethoadon.htChiTietHD(mahd, ds);
                                if (chitiethoadon == 1) {
                                    for (chiTietHoaDonModel hd : ds) {
                            %>
                            <tbody>
                                <tr>
                                    <th scope="row"><%=hd.getMasp()%></th>
                                    <td><%=hd.getSoluongmua()%></td>
                                    <td><%=hd.getGiaban()%></td>
                                    <td><%=hd.getThanhtien()%></td>
                                </tr>
                                <%                                        }
                                    }
                                %>

                            </tbody>
                        </table>
                        <table class="table table-bordered">
                            <tbody>
                                <tr class="table-info">
                                    <%
                                        float tongtien = (float) session.getAttribute("tongtien");
                                    %>
                                    <td  class="font-weight-bold">Giảm giá:</td>
                                    <td  ><%=tongtien%></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card my-4">
                    <h5 class="card-header">Thông tin đơn hàng</h5>
                    <div class="card-body">
                        <%
                            hoaDonModel hd = new hoaDonModel();
                            int kqHienThiHoaDon = CSDL.hoadon.searchHoaDon(mahd, hd);
                            if (kqHienThiHoaDon == 1) {
                        %>
                        <table class="table table-bordered">
                            <tbody>
                                <tr >
                                    <td class="font-weight-bold" >Mã Đơn hàng của quý khách:</td>
                                    <td  ><%=hd.getMahd()%></td>
                                </tr>
                                <tr >
                                    <td  class="font-weight-bold" >Thời gian đặt hàng:</td>
                                    <td  ><%=hd.getNgayban()%></td>
                                </tr>
                            </tbody>
                        </table>
                        <%}%>
                    </div>
                </div>
                <div class="card my-4">
                    <h5 class="card-header">Địa chỉ giao hàng</h5>
                    <div class="card-body">
                        <%
                            String usKhach = null;
                            Cookie[] cookies = request.getCookies();
                            for (Cookie c : cookies) {
                                if (c.getName().equals("usKhach")) {
                                    usKhach = c.getValue();
                                }
                            }
                            nguoiDungModel nd = new nguoiDungModel();
                            int searhNguoiDung = CSDL.nguoidung.searchTenNguoiDung(nd, usKhach);
                            if (searhNguoiDung == 1) {
                        %>
                        <table class="table table-bordered">
                            <tbody>
                                <tr >
                                    <td class="font-weight-bold" >Tên đăng nhập người nhận:</td>
                                    <td  ><%=nd.getTendangnhap()%></td>
                                </tr>
                                <tr >
                                    <td class="font-weight-bold" >Tên người nhận:</td>
                                    <td  ><%=nd.getHovaten()%></td>
                                </tr>
                                <tr >
                                    <td  class="font-weight-bold">Địa chỉ người nhận:</td>
                                    <td  ><%=nd.getDiachi()%></td>
                                </tr>
                                <tr >
                                    <td  class="font-weight-bold">Số điện thoại liên hệ:</td>
                                    <td  ><%=nd.getSdt()%></td>
                                </tr>
                            </tbody>
                        </table>
                        <%}%>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="layoutChung/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    </body>
</html>

