<%-- 
    Document   : dsPGG
    Created on : Jun 2, 2021, 8:20:34 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.phieuGiamGiaModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="layoutAdmin/menuAdmin.jsp" />

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="menuAdmin.jsp">Phiếu giảm giá</a></li>
                <li class="breadcrumb-item active">Danh Sách</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themmagiamgia.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                    <%
                        Vector<phieuGiamGiaModel> ds = new Vector<phieuGiamGiaModel>();
                        int kq = CSDL.phieugiamgia.listTT(ds);
                        if (kq == 1) {
                    %>
                    <table class="table">
                        <tr>
                            <th>
                                <text>ID mã giảm giá</text>
                            </th>
                            <th>
                                <text>kiểu giảm giá</text>
                            </th>
                            <th>
                                <text>Ngày bắt đầu</text>
                            </th>
                            <th>
                                <text>Ngày kết thúc</text>
                            </th>
                            <th>
                                <text>Số lượng</text>
                            </th>
                            <th>
                                <text>Giá trị</text>
                            </th>
                            <th>
                                <text>Điều kiện</text>
                            </th>

                            <th></th>
                        </tr>
                        <%
                            for (phieuGiamGiaModel pgg : ds) {
                        %>
                        <tr>
                            <td>
                                <text> <%=pgg.getIdmagiamgia()%></text>
                            </td>
                            <td>
                                <text> <%=pgg.isKieugiamgia() ? "Phần Trăm" : "Tiền mặt"%></text>
                            </td>
                            <td>
                                <text><%=pgg.getNgaybatdau()%></text>
                            </td>
                            <td>
                                <text> <%=pgg.getNgayketthuc()%></text>
                            </td>
                            <td>
                                <text><%=pgg.getSoluong()%></text>
                            </td>
                            <td>
                                <text> <%=pgg.getGiatri()%></text>
                            </td>
                            <td>
                                <text> <%=pgg.getDieukien()%></text>
                            </td>
                            <td>
                                <a href="suaPGG.jsp?idmagiamgia=<%=pgg.getIdmagiamgia()%>">Edit</a>|
                                <a href="chitietPGG.jsp?idmagiamgia=<%=pgg.getIdmagiamgia()%>">Details</a>|
                                <a href="xoaPGG.jsp?idmagiamgia=<%=pgg.getIdmagiamgia()%>">Delete</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <%}%>
                    <%
                        int demSoLuongPGG = CSDL.phieugiamgia.countPGG();
                    %>
                    <text><b>Tổng số bản ghi: </b><%=demSoLuongPGG%><text>
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
