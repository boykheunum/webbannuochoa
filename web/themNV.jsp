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
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Thêm sản phẩm </li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <%
                                    Vector<chucVuModel> ds = new Vector<chucVuModel>();
                                    
                                    int kq = CSDL.chucVu.listLoaiCV(ds);
                                    if (kq == 1) {
                                %>
                                <form class="form-horizontal" method="post" action="themNV">
                                    <h4>Sản Phẩm</h4>
                                    <hr />
                                    
                                    <div class="form-group">
                                        "Mã chức vụ"
                                        <select class="col-md-10" id="macv" name="macv">
                                            <%for (chucVuModel cv : ds) {%>
                                            <option><%=cv.getMacv()%></option>>
                                            <%}%>
                                        </select>>
                                    </div>
                                    <div class="form-group">
                                        "Tên nhân viên"
                                        <input class="col-md-10" type="text" id="tennv" name="tennv">

                                    </div>
                                    <div class="form-group">
                                        "Số điện thoại"
                                        <input class="col-md-10" type="text" id="sdt" name="sdt">
                                    </div>
                                    <div class="form-group">
                                        "Địa chỉ"
                                        <input class="col-md-10" type="text" id="diachi" name="diachi">
                                    </div>
                                    <div class="form-group">
                                        "Ngày sinh"
                                        <input class="col-md-10" type="text" id="ngaysinh" name="ngaysinh">
                                    </div>
                                    <div class="form-group">
                                        "Tên đăng nhập"
                                        <input class="col-md-10" type="text" id="tendangnhap" name="tendangnhap">
                                    </div>
                                    <div class="form-group">
                                        "Mật khẩu"
                                        <input class="col-md-10" type="password" id="matkhau" name="matkhau">
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Create" class="btn btn-default" />
                                        </div>
                                    </div>

                                </form>
                                }
                                <div>
                                    @Html.ActionLink("Back to List", "Index")
                                    <a href="Danh sách">Danh sách</a>
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
    <%}%>
