<%-- 
    Document   : suaNV
    Created on : Jun 2, 2021, 7:58:20 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.chucVuModel"%>
<%@page import="Model.nhanVienModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Nhân Viên</a></li>
                <li class="breadcrumb-item active">Sửa</li>
            </ol>
            <div class="card mb-4">
                <%
                    int manv = Integer.parseInt(request.getParameter("manv"));
                    nhanVienModel nv = new nhanVienModel();
                    int kq = CSDL.nhanVien.searchNhanVien(nv, manv);
                    if (kq == 1) {
                %>
                <form class="card-body" action="suaNV" method="post">
                    <div class="form-horizontal">
                        <h4>Nhân viên</h4>
                        <hr />
                        <div class="form-group">
                            <text><b>Mã chức vụ</b></text>
                            <div class="col-md-4">
                                <select class="col-md-4" id="macv" name="macv">
                                    <%
                                        Vector<chucVuModel> ds = new Vector<chucVuModel>();
                                        CSDL.chucVu.listLoaiCV(ds);
                                        for (chucVuModel cv : ds) {
                                    %>
                                    <option><%=cv.getMacv()%></option>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                        <input id="manv" type="hidden" name="manv" value="<%=nv.getManv()%>">
                        <div class="form-group">
                            <text><b>Tên nhân viên</b></text>
                            <div class="col-md-6">
                                <input type="text" id="tennv" name="tennv" value="<%=nv.getTennv()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Số điện thoại</b></text>
                            <div class="col-md-6">
                                <input type="text" id="sdt" name="sdt" value="<%=nv.getSdt()%>">
                            </div>
                        </div>

                        <div class="form-group">
                            <text><b>Ngày sinh</b></text>
                            <div class="col-md-6">
                                <input type="text" id="ngaysinh" name="ngaysinh" value="<%=nv.getNgaysinh()%>">
                            </div>
                        </div>

                        <div class="form-group">
                            <text><b>Tên Đăng nhập</b></text>
                            <div class="col-md-6">
                                <input type="text" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                            </div>
                        </div>


                        <div class="form-group">
                            <text><b>Tài khoản</b></text>
                            <div class="col-md-6">
                                <input class="form-control" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Mật khẩu</b></text>
                            <div class="col-md-6">
                                <input class="form-control" id="matkhau" name="matkhau" value="<%=nv.getMatkhau()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <text><b>Địa chỉ</b></text>
                            <div class="col-md-6">
                                <input class="form-control" id="diachi" name="diachi" value="<%=nv.getDiachi()%>">
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <input type="submit" value="Save" class="btn btn-dark" >
                            <button class="btn btn-dark">
                                <a href="dsNV.jsp" style="color: white; text-decoration: none">Quay lại danh sách</a>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <%}%>
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
