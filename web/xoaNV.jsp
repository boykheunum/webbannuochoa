<%-- 
    Document   : xoaNV
    Created on : Jun 2, 2021, 6:55:35 PM
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
                <li class="breadcrumb-item"><a href="dsNV.jsp">Nhân viên</a></li>
                <li class="breadcrumb-item active">Xóa nhân viên</li>
            </ol>
            <div class="card mb-4">
                <%
                    int manv = Integer.parseInt(request.getParameter("manv"));
                    nhanVienModel nv = new nhanVienModel();
                    int kq = CSDL.nhanVien.searchNhanVien(nv, manv);
                    if (kq == 1) {
                %>
                <form class="card-body" action="xoaNV" method="post">
                    <div class="form-horizontal">
                        <h4>Xóa nhân viên</h4>
                        <hr />
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Mã chức vụ</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="macv" name="macv" value="<%=nv.getMacv()%>">
                                <text><%=nv.getMacv()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Mã nhân viên</p>
                            <div class="col-sm-10">
                                <input id="manv" type="hidden" name="manv" value="<%=nv.getManv()%>">
                                <text><%=nv.getManv()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Tên nhân viên</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="tennv" name="tennv" value="<%=nv.getTennv()%>">
                                <text><%=nv.getTennv()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Số điện thoại</p>
                            <div class="col-sm-10">
                                <input type="hidden"id="soluongsdt" name="sdt" value="<%=nv.getSdt()%>">
                                <text><%=nv.getSdt()%></text>
                            </div>
                        </div>

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Ngày sinh</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="ngaysinh" name="ngaysinh" value="<%=nv.getNgaysinh()%>">
                                <text><%=nv.getNgaysinh()%></text>
                            </div>
                        </div>

                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Tên đăng nhâp</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                <text><%=nv.getTendangnhap()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Tài khoản</p>
                            <div class="col-sm-10">
                                <input class="form-control" type="hidden"  id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                <text><%=nv.getTendangnhap()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Mật khẩu</p>
                            <div class="col-sm-10">
                                <input type="hidden"  class="form-control" id="matkhau" name="matkhau" value="<%=nv.getMatkhau()%>">
                                <text><%=nv.getMatkhau()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Địa chỉ</p>
                            <div class="col-sm-10">
                                <input type="hidden" class="form-control" id="diachi" name="diachi" value="<%=nv.getDiachi()%>">
                                <text><%=nv.getDiachi()%></text>
                            </div>
                        </div>

                    </div>
                    <div class="form-actions no-color">
                        <input type="submit" value="Delete" class="btn btn-dark" />
                    </div>
                </form>
                <%}%>
                
                        <a href="dsNV.jsp">Quay lại danh sách</a>
                 

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
