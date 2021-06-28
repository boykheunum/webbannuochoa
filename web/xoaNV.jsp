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
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Chi Tiết</li>
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
                                            <text>  Mã chức vụ </text>
                                                <div class="col-md-6">
                                               <input type="hidden" id="macv" name="macv" value="<%=nv.getMacv()%>">
                                                 <text><%=nv.getMacv()%></text>
                                                </div>
                                         </div>
                                    <div class="form-group row">
                                            <text>  Mã nhân viên</text>
                                                <div class="col-md-6">
                                               <input id="manv" type="hidden" name="manv" value="<%=nv.getManv()%>">
                                                 <text><%=nv.getManv()%></text>
                                                </div>
                                         </div>
                                 
                                   <div class="form-group row">
                                      <text> Tên nhân viên</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="tennv" name="tennv" value="<%=nv.getTennv()%>">
                                            <text><%=nv.getTennv()%></text>
                                        </div>
                                    </div>
                                   <div class="form-group row">
                                        <text>Số điện thoại</text>
                                        <div class="col-md-6">
                                            <input type="hidden"id="soluongsdt" name="sdt" value="<%=nv.getSdt()%>">
                                            <text><%=nv.getSdt()%></text>
                                        </div>
                                    </div>

                                   <div class="form-group row">
                                        <text>Ngày sinh</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="ngaysinh" name="ngaysinh" value="<%=nv.getNgaysinh()%>">
                                            <text><%=nv.getNgaysinh()%></text>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <text>Tên Đăng nhập</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                            <text><%=nv.getTendangnhap()%></text>
                                        </div>
                                    </div>
                                 <div class="form-group row">
                                        <text>Tài khoản</text>
                                        <div class="col-md-6">
                                            <input class="form-control" type="hidden"  id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                            <text><%=nv.getTendangnhap()%></text>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <text>Mật khẩu</text>
                                        <div class="col-md-6">
                                            <input type="hidden"  class="form-control" id="matkhau" name="matkhau" value="<%=nv.getMatkhau()%>">
                                            <text><%=nv.getMatkhau()%></text>
                                        </div>
                                    </div>
                                     <div class="form-group row">
                                       <text> Địa chỉ</text>
                                        <div class="col-md-6">
                                            <input type="hidden" class="form-control" id="diachi" name="diachi" value="<%=nv.getDiachi()%>">
                                            <text><%=nv.getDiachi()%></text>
                                        </div>
                                    </div>

                                </div>
                               <div class="form-group row">
                                    <div class="col-md-offset-2 col-md-6">
                                        <input type="submit" value="Save" class="btn btn-default" />
                                    </div>
                                </div>
                                 </div>
                            </form>
                        


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
