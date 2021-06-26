<%-- 
    Document   : xacNhanThongTinThanhToan
    Created on : Jun 21, 2021, 10:00:42 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.sanphamModel"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Model.nguoiDungModel"%>
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
                <h1 class="mt-4 mb-3">
                    Thông tin mua hàng
                </h1>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Thông tin mua hàng</li>
                </ol>
                <div class="row">
                    <!-- Post Content Column-->
                    <div class="col-lg-8">
                        <!-- Preview Image-->

                        <!-- Comments Form-->

                        <div class="card my-4">
                            <h5 class="card-header">1. Thông tin nhận hàng</h5>
                            <!--form sua thong tin nguoi dung-->
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
                                    int kq = CSDL.nguoidung.searchTenNguoiDung(nd, usKhach);
                                    if (kq == 1) {
                                %>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Họ và tên:</label>
                                        <input class="form-control" id="hovatenTT" name="hovatenTT" type="text" value="<%=nd.getHovaten()%>" />
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Số điện thoại:</label>
                                        <input class="form-control" id="sdtTT" name="sdtTT" type="tel" value="<%=nd.getSdt()%>" />
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <input class="form-control" id="makh" name="makh" type="hidden" value="<%=nd.getMakh()%>" />
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <input class="form-control" id="tendangnhapTT" name="tendangnhapTT" type="hidden" value="<%=nd.getTendangnhap()%>" />
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <input class="form-control" id="matkhauTT" name="matkhauTT" type="hidden" value="<%=nd.getMatkhau()%>" />
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Địa chỉ:</label>
                                        <input class="form-control" id="diachiTT" name="diachiTT" type="text" value="<%=nd.getDiachi()%>" />
                                    </div>
                                </div>
                                <div id="success"></div>
                                <div class="alert alert-light" role="alert">
                                    Chú ý: Nếu không có gì cần thay đổi thì có thể bỏ qua.
                                </div>
                                <%}%>
                                <button type="button" id="suaTT" name="suaTT" class="btn btn-info">Sửa thông tin</button>
                                <!-- For success/fail messages-->
                            </div>


                        </div>
                        <!-- Comment with nested comments-->
                        <div class="card my-4">
                            <h5 class="card-header">2. Sản phẩm đặt hàng</h5>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">Mã sản phẩm</th>
                                            <th scope="col">Sản phẩm</th>
                                            <th scope="col">Số lượng</th>
                                            <th scope="col">Giá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            TreeMap<String, Integer> hoadon = (TreeMap<String, Integer>) session.getAttribute("cart");
                                            Set<String> ds = hoadon.keySet();
                                            int tongtien = 0;
                                            float thanhtien = 0;
                                            for (String masp : ds) {
                                                sanphamModel sp = new sanphamModel();
                                                int searchSP = CSDL.SanPham.searchSP(sp, masp);
                                                if (searchSP == 1) {
                                                    String maloaisp = sp.getMaloaisp();
                                                    String tensp = sp.getTensp();
                                                    int soluongmua = hoadon.get(masp);
                                                    float giaban = sp.getGiaban();
                                                    thanhtien = giaban * soluongmua;

                                        %>
                                        <tr>
                                            <td><%=masp%></td>
                                            <td><%=tensp%></td>
                                            <td><%=soluongmua%></td>
                                            <td><%=thanhtien%></td>
                                        </tr>
                                        <%}
                                            tongtien += thanhtien;
                                        %>
                                        <%}%>
                                        <tr>
                                            <td colspan="2">
                                                <div>
                                                    <span id="checkmagiamgia" name="checkmagiamgia"
                                                          class="checkmagiamgia"></span>
                                                    <div class="d-flex justify-content-between"></div>
                                                    <text>Mã giảm giá: </text>
                                                    <input type="text" name="magiamgia"
                                                           id="magiamgia">
                                                    <input type="hidden" id="tongGia" name="tongGia" value="<%=tongtien%>">
                                                    <input id="guimagiamgia" name="guimagiamgia" type="submit"
                                                           value="Sử dụng">

                                                </div>
                                            </td>
                                    <input type="hidden" class="GiaGoc" id="GiaGoc" value="<%=tongtien%>"/>
                                    <td colspan="2">Tổng tiền: <span id="TongTien"><%=tongtien%></span></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div id="success"></div>
                                <!-- For success/fail messages-->
                            </div>
                        </div>
                    </div>
                    <!-- Sidebar Widgets Column-->
                    <div class="col-md-4">
                        <!-- Search Widget-->
                        <div class="card mb-4">
                            <h5 class="card-header">Phương Thức Thanh Toán</h5>
                            <div class="card-body">
                                <div class="input-group">
                                    <h6>Thanh toán khi nhận hàng</h6>

                                    <p></p>
                                    <h6 class="card-subtitle mb-2 text-muted">Quý khách sẽ được nhận thanh toán sau khi nhận được hàng</h6>
                                </div>
                            </div>
                        </div>

                        <!-- Categories Widget-->

                        <!-- Side Widget-->
                        <button type="button" id="thanhtoan" class="btn btn-dark">Đặt hàng</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="layoutChung/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script>
            $(document).ready(function () {
                //sua thong tin khach hang
                $("#suaTT").click(function () {
                    $.ajax({
                        method: 'POST',
                        url: 'suaThongTinKhiTT',
                        data: {
                            hovaten: $("#hovatenTT").val(),
                            sdt: $("#sdtTT").val(),
                            makh: $("#makh").val(),
                            tendangnhap: $("#tendangnhapTT").val(),
                            matkhau: $("#matkhauTT").val(),
                            diachi: $("#diachiTT").val(),
                        },
                        success: function (res) {
                            if (res == "1") {
                                location.href = "/WebBanSach/xacNhanThongTinThanhToan.jsp"
                            } else {
                                location.href = "/WebBanSach/500.jsp"
                            }
                        }
                    });
                });
                //ma giam gia
                $("#guimagiamgia").click(function () {
                    $("#checkmagiamgia").removeClass("text-success");
                    $("#checkmagiamgia").removeClass("text-danger");
                    $("#checkmagiamgia").html("");
                    $.ajax({
                        method: 'post',
                        url: 'magiamgia',
                        data: {
                            magiamgia: $('#magiamgia').val(),
                            //tongGia: $("#TongTien").html(),
                            tongGia: $("#tongGia").val(),
                        },
                        success: function (res) {
                            if (res == "-1") {
                                $("#checkmagiamgia").html("Mã phiếu giảm giá không hợp lệ");
                                $("#checkmagiamgia").addClass("text-danger");
                                $("#checkmagiamgia").removeClass("text-success");
                                $("#TongTien").html($(".GiaGoc").val());
                            } else if (res == -2) {
                                $("#checkmagiamgia").html("Giá trị đơn hàng chưa đủ");
                                $("#checkmagiamgia").addClass("text-danger");
                                $("#checkmagiamgia").removeClass("text-success");
                                $("#TongTien").html($(".GiaGoc").val());
                            } else {
                                $("#TongTien").html(res);
                            }
                        }
                    });
                });

                //thanh toan
                $("#thanhtoan").click(function () {
                    $.ajax({
                        method: 'POST',
                        url: 'thanhtoan',
                        data: {
                            magiamgia: $('#magiamgia').val(),
                            tongGia: $("#TongTien").html(),
                            giagoc: $("#GiaGoc").val(),
                        },
                        success: function (res) {
                            if (res == "-1") {
                                location.href = "/WebBanSach/500.jsp"
                            } else {
                                location.href = "/WebBanSach/hoaDonKH.jsp"
                            }
                        }
                    });
                });

            });
        </script>
    </body>
</html>

