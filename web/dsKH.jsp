<%-- 
    Document   : dsKH
    Created on : Jun 21, 2021, 5:58:19 PM
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
<<<<<<< HEAD
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="menuAdmin.jsp">Khách hàng</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
<button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themKH.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                                <%
                                    Vector<nguoiDungModel> ds = new Vector<nguoiDungModel>();
                                    int kq = CSDL.nguoidung.listNguoiDung(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                            <text>Mã Khách hàng</text>
                                        </th>
                                        <th>
                                            <text>Tên đăng nhập</text>
                                        </th>
                                        <th>
                                            <text>Mật khẩu</text>
                                        </th>
                                        <th>
                                            <text>Họ và tên</text>
                                        </th>
                                        <th>
                                            <text>Địa chỉ</text>
                                        </th>
                                        <th>
                                            <text>Số điện thoại</text>
                                        </th>
=======
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
                <li class="breadcrumb-item"><a href="menuAdmin.jsp">Khách hàng</a></li>
                <li class="breadcrumb-item active">Danh Sách</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%                        Vector<nguoiDungModel> ds = new Vector<nguoiDungModel>();
                        int kq = CSDL.nguoidung.listNguoiDung(ds);
                        if (kq == 1) {
                    %>
                    <table class="table">
                        <tr>
                            <th>
                                <text>Mã Khách hàng</text>
                            </th>
                            <th>
                                <text>Tên đăng nhập</text>
                            </th>
                            <th>
                                <text>Mật khẩu</text>
                            </th>
                            <th>
                                <text>Họ và tên</text>
                            </th>
                            <th>
                                <text>Địa chỉ</text>
                            </th>
                            <th>
                                <text>Số điện thoại</text>
                            </th>
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716

                            <th></th>
                        </tr>
                        <%
                            for (nguoiDungModel nd : ds) {
                        %>
                        <tr>
                            <td>
                                <text><%=nd.getMakh()%></text>
                            </td>
                            <td>
                                <text><%=nd.getTendangnhap()%></text>
                            </td>
                            <td>
                                <text><%=nd.getMatkhau()%></text>
                            </td>
                            <td>
                                <text><%=nd.getHovaten()%></text>
                            </td>
                            <td>
                                <text><%=nd.getDiachi()%></text>
                            </td>
                            <td>
                                <text><%=nd.getSdt()%></text>
                            </td>
                            <td>
                                <a href="suaKH.jsp?makh=<%=nd.getMakh()%>">Edit</a>|
                                <a href="xoaKH.jsp?makh=<%=nd.getMakh()%>">Delete</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <%}%>

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
