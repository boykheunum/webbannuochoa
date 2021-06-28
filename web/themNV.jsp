<%-- 
    Document   : themNV
    Created on : Jun 2, 2021, 5:50:14 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.chucVuModel"%>
<%@page import="Model.nhanVienModel"%>
<%@page import="CSDL.nhanVien"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="dsNV.jsp">Nhân Viên</a></li>
                <li class="breadcrumb-item active">Thêm nhân viên </li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        Vector<chucVuModel> ds = new Vector<chucVuModel>();

                        int kq = CSDL.chucVu.listLoaiCV(ds);
                        if (kq == 1) {
                    %>
                    <form class="form-horizontal" method="post" action="themNV">
                        <h4>Thêm nhân viên</h4>
                        <hr />

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Mã chức vụ</p>
                            <div class="col-sm-10">
                                 <select class="col-md-10" id="macv" name="macv">
                                    <%for (chucVuModel cv : ds) {%>
                                    <option><%=cv.getMacv()%></option>>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Tên nhân viên</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="tennv" name="tennv">

                            </div>
                        </div>

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Số điện thoại</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="sdt" name="sdt">
                            </div>
                        </div>

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Địa chỉ</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="diachi" name="diachi">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Ngày sinh</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="ngaysinh" name="ngaysinh">
                            </div>
                        </div>

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Tên đăng nhập</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="tendangnhap" name="tendangnhap">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Mật khẩu</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="password" id="matkhau" name="matkhau">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="submit" value="Create" class="btn btn-dark">Thêm nhân viên</button>
                            </div>
                            <a href=dsNV.jsp" class="btn btn-dark" role="button" aria-pressed="true">Quay lại danh sách</a>
                        </div>

                    </form>


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

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="content/js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="content/assets/demo/datatables-demo.js"></script>
</body>
<%}%>
