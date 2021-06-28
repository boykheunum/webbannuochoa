<%-- 
    Document   : suaKH.jsp
    Created on : Jun 21, 2021, 6:07:14 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="Model.nguoiDungModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usNV = null;
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if (c.getName().equals("usNV")) {
            usNV = c.getValue();
        }
    }
    nhanVienModel nv = new nhanVienModel();
    int kqSearchCV = CSDL.nhanVien.searchCVNhanVien(nv, usNV);
    if (kqSearchCV == 1) {
        String macv = nv.getMacv();
        if (macv.contains("1") == true) {
%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<%
} else {
%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
<%
        }
    }

%>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
<<<<<<< HEAD
                <li class="breadcrumb-item"><a href="dsKH.jsp">Khách hàng</a></li>
                <li class="breadcrumb-item active">Sửa thông tin khách hàng</li>
=======
                <li class="breadcrumb-item"><a href="index.html">Sửa khách hàng</a></li>
                <li class="breadcrumb-item active">Sửa </li>
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716
            </ol>
            <div class="card mb-4">
                <%
                    int makh = Integer.parseInt(request.getParameter("makh"));
                    nguoiDungModel kh = new nguoiDungModel();
                    int kq = CSDL.nguoidung.searchNguoiDung(kh, makh);
                    if (kq == 1) {
                %>
                <form class="card-body" action="suaKH" method="post">
                    <div class="form-horizontal">
                        <h4>Khách hàng</h4>
                        <hr />
                        <input id="makh" type="hidden" name="makh" value="<%=kh.getMakh()%>">
<<<<<<< HEAD
                        <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Tên đăng nhập</p>
                                <div class="col-sm-10">
                                <input type="text" id="tendangnhap" name="tendangnhap" value="<%=kh.getTendangnhap()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mật khẩu</p>
                                <div class="col-sm-10">
                                <input type="text" id="matkhau" name="matkhau" value="<%=kh.getMatkhau()%>">
                            </div>
                        </div>
                       <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Họ và tên</p>
                                <div class="col-sm-10">
                                <input type="text" id="hovaten" name="hovaten" value="<%=kh.getHovaten()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Địa chỉ</p>
                                <div class="col-sm-10">
                                <input type="text" id="diachi" name="diachi" value="<%=kh.getDiachi()%>">
                            </div>
                        </div>
                       <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Số điện thoại</p>
                                <div class="col-sm-10">
=======
                        <div class="form-group">
                            <text><b>Tên đăng nhập</b></text>
                            <div class="col-md-6">
                                <input type="text" id="tendangnhap" name="tendangnhap" value="<%=kh.getTendangnhap()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Mật khẩu</b></text>
                            <div class="col-md-6">
                                <input type="text" id="matkhau" name="matkhau" value="<%=kh.getMatkhau()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Họ và tên</b></text>
                            <div class="col-md-6">
                                <input type="text" id="hovaten" name="hovaten" value="<%=kh.getHovaten()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Địa chỉ</b></text>
                            <div class="col-md-6">
                                <input type="text" id="diachi" name="diachi" value="<%=kh.getDiachi()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Số điện thoại</b></text>
                            <div class="col-md-6">
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716
                                <input class="form-control" id="sdt" name="sdt" value="<%=kh.getSdt()%>">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <input type="submit" value="Save" class="btn btn-dark" >
                            <button class="btn btn-dark">
                                <a href="dsKH.jsp" style="color: white; text-decoration: none">Quay lại danh sách</a>
                            </button>
                        </div>
                    </div>
                </form>
            </div>


            <%}%>

<<<<<<< HEAD
           <a href="dsKH.jsp">Quay lại danh sách</a>
=======
            <div>

            </div>
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716


        </div>
</div>
</div>
</div>
</main>

<footer class="py-4 bg-light mt-auto">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; Your Website 2020</div>
            <div>
                <a href="#">Privacy Policy</a>
                &middot;
                <a href="#">Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="content/js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="content/assets/demo/datatables-demo.js"></script>
</body>
</html>
