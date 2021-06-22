<%-- 
    Document   : dsNV
    Created on : Jun 2, 2021, 4:57:30 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="CSDL.nhanVien"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="menuAdmin.jsp">Nhân Viên</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <p>
                                    @Html.ActionLink("Create New", "Create")
                                </p>
                                <%
                                    Vector<nhanVienModel> ds = new Vector<nhanVienModel>();
                                    int kq = CSDL.nhanVien.listNhanVien(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                            Mã chức vụ
                                        </th>
                                        <th>
                                            Mã nhân viên
                                        </th>
                                        <th>
                                            <text>Tên nhân viên</text>
                                        </th>
                                        <th>
                                            <text>Số điện thoại</text>
                                        </th>
                                        <th>
                                            <text>Địa chỉ</text>
                                        </th>
                                        <th>
                                            <text>Tên đăng nhập</text>
                                        </th>
                                        <th>
                                            <text>Mật khẩu</text>
                                        </th>

                                        <th></th>
                                    </tr>
                                    <%
                                        for (nhanVienModel nv : ds) {
                                    %>
                                    <tr>
                                        <td>
                                            <text> <%=nv.getMacv()%> </text>
                                        </td>
                                        <td>
                                           <text> <%=nv.getManv()%> </text>
                                        </td>>
                                        <td>
                                           <text> <%=nv.getTennv()%></text>
                                        </td>
                                        <td>
                                            <text> <%=nv.getSdt()%></text>
                                        </td>
                                        <td>
                                           <text> <%=nv.getDiachi()%></text>
                                        </td>
                                        <td>
                                            <text><%=nv.getTendangnhap()%></text>
                                        </td>
                                        <td>
                                            <text><%=nv.getMatkhau()%></text>
                                        </td>
                                        <td>
                                            <a href="suaNV.jsp?manv=<%=nv.getManv()%>">Edit</a>|
                                            <a href="chitietNV.jsp?manv=<%=nv.getManv()%>">Details</a>|
                                            <a href="xoaNV.jsp?manv=<%=nv.getManv()%>">Delete</a>
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
