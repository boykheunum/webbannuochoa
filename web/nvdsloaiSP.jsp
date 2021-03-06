<%-- 
    Document   : nvdsloaiSP
    Created on : Jun 2, 2021, 11:06:05 PM
    Author     : quyenlh
--%>


<%@page import="java.util.Vector"%>
<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Vector<loaispModel> ds = new Vector<loaispModel>();
    int kq = CSDL.LoaiSP.listLoaiSP(ds);
    if (kq == 1) {
%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">


                                <p>
                                    @Html.ActionLink("Thêm mới", "Create")
                                    <a href="Thêm mới">Thêm mới</a>|
                                </p>
                                <table class="table">
                                    <tr>
                                        <th>
                                            <text>Mã Loại Sản Phẩm</text>
                                        <th>
                                            <text>Tên Loại Sản Phẩm</text>
                                        </th>
                                        <th></th>
                                    </tr>

                                    <%for (loaispModel lsp : ds) {%>
                                    <tr>
                                        <td>
                                            <%=lsp.getMaloaisp()%>
                                        </td>
                                        <td>
                                            <%=lsp.getTenloaisp()%>
                                        </td>
                                        <td>
                                            <a href="nvsualoaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Edit</a>|
                                            <a href="nvchitietloaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Details</a>|
                                            <a href="nvxoaloaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Delete</a>
                                        </td>
                                    </tr>
                                    <%}%>

                                </table>


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
<%}%>

