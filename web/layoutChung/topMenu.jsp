<%-- 
    Document   : topMenu
    Created on : May 23, 2021, 2:56:50 PM
    Author     : Nguyen Tien Dat
--%>
<%@page import="Model.loaispModel"%>
<%@page import="Model.nguoiDungModel"%>
<%@page import="Model.tintucModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="phantrangUserSP">LIDAPERFUME</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="dropsanpham" href="about.html"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
                            <%
                                Vector<loaispModel> dsloaisp = new Vector<loaispModel>();
                            %>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropsanpham">
                                <%
                                    int kqloaiSP = CSDL.LoaiSP.listLoaiSP(dsloaisp);
                                    if (kqloaiSP == 1) {
                                        for (loaispModel lsp : dsloaisp) {
                                %>
                                <a class="dropdown-item" href="phantrangLoaiSP?maloaisp=<%=lsp.getMaloaisp()%>"><%=lsp.getTenloaisp()%></a>
                                <%}
                                    }
                                %>
                            </div>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="droptintuc" href="#" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Các hãng nước hoa</a>
                            <%
                                Vector<tintucModel> ds = new Vector<tintucModel>();
                                int kq = CSDL.tintuc.listTT(ds);
                                if (kq == 1) {
                            %>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="droptintuc">
                                <%
                                    for (tintucModel tt : ds) {
                                %>
                                <a class="dropdown-item" href="hienthiTT.jsp?id=<%=tt.getId()%>"><%=tt.getTieude()%></a>
                                <%}%>
                            </div>
                            <%}%>
                        </li>

                        <li class="nav-item"><a class="nav-link" href="giohang.jsp">Giỏ Hàng</a></li>
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
                                if (searhNguoiDung == 1 && usKhach != null) {
                            %>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="dropNguoiDung" href="#"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=nd.getTendangnhap()%></a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropsanpham">
                                <a class="dropdown-item" href="lichsudonhang.jsp?makh=<%=nd.getMakh()%>">Lịch sử mua hàng</a>
                                <a class="dropdown-item" href="thongtintaikhoan.jsp?makh=<%=nd.getMakh()%>">Tài khoản</a>
                                <a class="dropdown-item" href="dangXuat">Đăng xuất</a>
                            </div>
                        </li>
                        <%} else if (usKhach == null) {%>
                        <li class="nav-item">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary DangNhap" data-toggle="modal" data-target="#exampleModal">
                                Đăng nhập
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header" style="display: block;">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link active" style="color: blue;" id="home-tab"
                                                       data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                                       aria-selected="true">Đăng nhập</a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link" style="color: blue;" id="profile-tab"
                                                       data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                                                       aria-selected="false">Đăng ký</a>
                                                </li>
                                            </ul>

                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="home" role="tabpanel"
                                                     aria-labelledby="home-tab">
                                                    <form method="post" action="dangnhap">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Tài Khoản</label>
                                                            <input type="text" class="form-control" id="tendangnhap1" name="tendangnhap1">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Mật khẩu</label>
                                                            <input type="password" class="form-control"
                                                                   id="matkhau" name="matkhau">
                                                        </div>
                                                        <div class="form-group form-check">
                                                            <input type="checkbox" class="form-check-input"
                                                                   id="exampleCheck1">
                                                            <label class="form-check-label" for="exampleCheck1">Check me
                                                                out</label>
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Đăng nhập">
                                                        <input type="button" class="btn btn-secondary" data-dismiss="modal"
                                                               value="Hủy">
                                                    </form>
                                                </div>
                                                <div class="tab-pane fade" id="profile" role="tabpanel"
                                                     aria-labelledby="profile-tab">
                                                    <form id="dangky" name="dangky" method="post" action="dangkyUser">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Họ và tên</label>
                                                            <input type="text" class="form-control" id="hoten"
                                                                   name="hoten">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Số điện thoại</label>
                                                            <input type="text" class="form-control" id="sodienthoai"
                                                                   name="sodienthoai">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Số địa chỉ</label>
                                                            <input type="text" class="form-control" id="diachi"
                                                                   name="diachi">
                                                        </div>

                                                        <span id="messBoxErr2" ></span>
                                                        <span id="messBox2" style="color: greenyellow"></span>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Tên đăng nhập</label>
                                                            <input type="text" class="form-control" id="tendangnhap2"
                                                                   name="tendangnhap2">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Mật khẩu</label>
                                                            <input type="password" class="form-control"
                                                                   id="matkhau" name="matkhau">
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Đăng ký">
                                                        <input type="button" class="btn btn-secondary" data-dismiss="modal"
                                                               value="Hủy">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <%}%>

                        <li class="nav-item"><a class="nav-link" href="contact.html">  </a></li>
                        <li class="nav-item">
                            <form class="input-group rounded" id="searchFrom" name="searchForm" method="post" action="SearchByAjax" >
                                <input type="search" id="search" name="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                                <!--                                <span class="input-group-text border-0" id="search-addon">
                                                                    <input type="submit" class="fas fa-search">
                                                                </span>-->
                                <input type="submit" value="search">
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Bootstrap core JS-->

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>
        <!--ajax -->
        <script>
            $(document).ready(function () {
                $('#tendangnhap2').keyup(function () {
                    $.ajax({
                        method: 'POST',
                        url: 'checkUserName',
                        data: {
                            tendangnhap2: $('#tendangnhap2').val()
                        },
                        success: function (res) {
                            var messBox = document.getElementById('messBox2');
                            var messBoxErr = document.getElementById('messBoxErr2');
                            if (res == 1) {
                                $("#messBoxErr2").html("Đã tồn tại userName");
                                $("#messBoxErr2").addClass("text-danger");
                                $("#messBoxErr2").removeClass("text-success");
                            } else {
                                $("#messBoxErr2").removeClass("text-danger");
                                $("#messBoxErr2").addClass("text-success");
                                $("#messBoxErr2").html("userName hợp lệ");
                            }
                        }
                    });
                });
            });

        </script>
    </body>

</html>
