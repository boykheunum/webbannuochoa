<%-- 
    Document   : nvhienthiSP
    Created on : Jun 2, 2021, 11:03:45 PM
    Author     : quyenlh
--%>


<%@page import="Model.sanphamModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <p>
                                    @Html.ActionLink("Create New", "Create")
                                </p>
                                <%
                                    Vector<sanphamModel> ds = new Vector<sanphamModel>();
                                    int kq = CSDL.SanPham.listSP(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                            Mã Sản Phẩm
                                        </th>
                                        <th>
                                            Mã Loại Sản Phẩm
                                        </th>
                                        <th>
                                            <text>Tên Sản Phẩm</text>
                                        </th>
                                        <th>
                                            <text>Số Lượng</text>
                                        </th>
                                        <th>
                                            <text>Giá Nhập</text>
                                        </th>
                                        <th>
                                            <text>Giá Bán</text>
                                        </th>
                                        <th>
                                            <text>Mô tả</text>
                                        </th>

                                        <th>
                                            <text>Ảnh</text>
                                        </th>

                                        <th>
                                            <text>Tên Loại Sản Phẩm</text>
                                        </th>
                                        <th></th>
                                    </tr>
                                    <%
                                        for (sanphamModel sp : ds) {
                                    %>
                                    <tr>
                                        <td>
                                            <%=sp.getMasp()%>
                                        </td>
                                        <td>
                                            <%=sp.getMaloaisp()%>
                                        </td>>
                                        <td>
                                            <%=sp.getTensp()%>
                                        </td>
                                        <td>
                                            <%=sp.getSoluong()%>
                                        </td>
                                        <td>
                                            <%=sp.getGianhap()%>
                                        </td>
                                        <td>
                                            <%=sp.getGiaban()%>
                                        </td>
                                        <td>
                                            <%=sp.getMota()%>
                                        </td>
                                        <td>
                                            <img width='348px' height="348px"  src="imageSP/<%=sp.getHinhanh()%>"></a>
                                        </td>
                                        <td>
                                            <a href="nvsuaSP.jsp?masp=<%=sp.getMasp()%>">Edit</a>|
                                            <a href="nvchitietSP.jsp?masp=<%=sp.getMasp()%>">Details</a>|
                                            <a href="nvxoaSP.jsp?masp=<%=sp.getMasp()%>">Delete</a>
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
