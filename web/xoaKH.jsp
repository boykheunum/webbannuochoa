<%-- 
    Document   : xoaKH
    Created on : Jun 21, 2021, 6:38:11 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nguoiDungModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Nhân Viên</a></li>
                <li class="breadcrumb-item active">Sửa </li>
            </ol>
            <div class="card mb-4">
                <%
                    int makh = Integer.parseInt(request.getParameter("makh"));
                    nguoiDungModel kh = new nguoiDungModel();
                    int kq = CSDL.nguoidung.searchNguoiDung(kh, makh);
                    if (kq == 1) {
                %>
                <form class="card-body" action="xoaKH" method="post">
                    <div class="form-horizontal">
                        <h4>Khách hàng</h4>
                        <hr />
                        <input id="makh" type="hidden" name="makh" value="<%=kh.getMakh()%>">
                        <div class="form-group">
                            "Tên đăng nhập"
                            <div class="col-md-6">
                                <input type="text" id="tendangnhap" name="tendangnhap" value="<%=kh.getTendangnhap()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            "Mật khẩu"
                            <div class="col-md-6">
                                <input type="text" id="matkhau" name="matkhau" value="<%=kh.getMatkhau()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            "Họ và tên"
                            <div class="col-md-6">
                                <input type="text" id="hovaten" name="hovaten" value="<%=kh.getHovaten()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            "Địa chỉ"
                            <div class="col-md-6">
                                <input type="text" id="diachi" name="diachi" value="<%=kh.getDiachi()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            "Số điện thoại"
                            <div class="col-md-6">
                                <input class="form-control" id="sdt" name="sdt" value="<%=kh.getSdt()%>">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-6">
                            <input type="submit" value="Delete" class="btn btn-default" />
                        </div>
                    </div>
                </form>
            </div>
            <%}%>
            <div>
                @Html.ActionLink("Back to List", "Index")
            </div>


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
