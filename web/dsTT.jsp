<%-- 
    Document   : dsTT
    Created on : Jun 3, 2021, 1:34:42 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.tintucModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="#">Tin Tức</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <p>
                                    @Html.ActionLink("Create New", "Create")
                                </p>
                                <%
                                    Vector<tintucModel> ds = new Vector<tintucModel>();
                                    int kq = CSDL.tintuc.listTT(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                            Mã bài viết
                                        </th>
                                        <th>
                                            Tiêu đề
                                        </th>
                                        <th>
                                            Ảnh
                                        </th>
                                        <th>
                                            <text>Nội dung</text>
                                        </th>
                                        <th>
                                            <text>Ngày đăng</text>
                                        </th>
                                        <th></th>
                                    </tr>
                                    <%
                                        for (tintucModel tt : ds) {
                                    %>
                                    <tr>
 <td>
                                           <text> <%=tt.getId()%></text>
                                        </td>
                                        <td>
                                          <text>  <%=tt.getTieude()%></text>
                                        </td>
                                        <td>
                                            <img width='348px' height="348px"  src="imageSP/<%=tt.getAnh()%>">
                                        </td>
                                        <td>
                                           <text> <%=tt.getNoidung()%></text>
                                        </td>
                                        <td>
                                           <text> <%=tt.getNgaydang()%></text>
                                        </td>                                      
                                        <td>
                                            <a href="suaTT.jsp?id=<%=tt.getId()%>">Edit</a>|
                                            <a href="chitietTT.jsp?id=<%=tt.getId()%>">Details</a>|
                                            <a href="xoaTT.jsp?id=<%=tt.getId()%>">Delete</a>
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
</html
