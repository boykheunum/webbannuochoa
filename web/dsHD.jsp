<%-- 
    Document   : dsHD
    Created on : Jun 28, 2021, 12:30:49 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.hoaDonModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="menuAdmin.jsp">Hóa đơn</a></li>
                <li class="breadcrumb-item active">Danh Sách</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                   
                    <%
                        Vector<hoaDonModel> ds = new Vector<hoaDonModel>();
                        int kq = CSDL.hoadon.listHD(ds);
                        if (kq == 1) {
                    %>
                    <table class="table">
                        <tr>
                            <th>
                                <text><b>Mã hóa đơn</b></text>
                            </th>
                            <th>
                                <text><b>Ngày bán</b></text>
                            </th>
                            <th>
                                <text><b>Tổng tiền</b></text>
                            </th>
                            <th>
                                <text><b>Mã khách hàng</b></text>
                            </th>
                            <th></th>
                        </tr>
                        <%
                            for (hoaDonModel hd : ds) {
                        %>
                        <tr>
                            <td>
                                <text><%=hd.getMahd()%></text>
                            </td>
                            <td>
                                <text><%=hd.getNgayban()%></text>
                            </td>
                            <td>
                                <text><%=hd.getTongtien()%></text>
                            </td>
                            <td>
                                <text><%=hd.getMakh()%></text>
                            </td>
                            <td>
                                <a href="xoaHD.jsp?mahd=<%=hd.getMahd()%>">Delete</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <%}%>
                     <%
                        int demSoLuongHD = CSDL.hoadon.countHD();
                    %>
                    <text><b>Tổng số hóa đơn: </b><%=demSoLuongHD%><text>
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

