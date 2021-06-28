<%-- 
    Document   : dsTTCH
    Created on : Jun 5, 2021, 10:22:58 AM
    Author     : quyenlh
--%>

<%@page import="Model.thongTinCuaHangModel"%>
<%@page import="CSDL.thongtincuahang"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="menuAdmin.jsp">Thông tin cửa hàng</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
<button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themTTCH.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                                
                                <%
                                    Vector<thongTinCuaHangModel> ds = new Vector<thongTinCuaHangModel>();
                                    int kq = CSDL.thongtincuahang.listTT(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                           <text> Id</text>
                                        </th>
                                        <th>
                                           <text> Email</text>
                                        </th>
                                        <th>
                                            <text>Địa Chỉ</text>
                                        </th>
                                        <th>
                                            <text>Số điện thoại</text>
                                        </th>                                        
                                        <th></th>
                                    </tr>
                                    <%
                                        for (thongTinCuaHangModel tt : ds) {
                                    %>
                                    <tr>
                                        <td>
                                           <text> <%=tt.getId()%></text>
                                        </td>
                                        <td>
                                            <text><%=tt.getEmail()%></text>
                                        </td>>
                                        <td>
                                             <text> <%=tt.getDiachi()%></text>
                                        </td>
                                        <td>
                                            <text>  <%=tt.getSdtcuahang()%></text>
                                        </td>
                                        <td>
                                            <a href="suaTTCH.jsp?id=<%=tt.getId()%>">Edit</a>|
                                            <a href="chitietTTCH.jsp?id=<%=tt.getId()%>">Details</a>|
                                            <a href="xoaTTCH.jsp?id=<%=tt.getId()%>">Delete</a>
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