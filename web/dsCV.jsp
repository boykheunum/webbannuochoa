<%-- 
    Document   : dsCV
    Created on : Jun 2, 2021, 3:57:15 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.chucVuModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="menuAdmin.jsp">Chức Vụ</a></li>
                            <li class="breadcrumb-item active">Danh Sách</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">


                                <button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themCV.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                                <%
                                    Vector<chucVuModel> ds = new Vector<chucVuModel>();
                                    int kq = CSDL.chucVu.listLoaiCV(ds);
                                    if (kq == 1) {
                                %>
                                <table class="table">
                                    <tr>
                                        <th>
                                            <text>Mã chức vụ</text>
                                        <th>
                                            <text>Tên chức vụ</text>
                                        </th>
                                        <th></th>
                                    </tr>

                                    <%for (chucVuModel cv : ds) {%>
                                    <tr>
                                        <td>
                                            <text><%=cv.getMacv()%></text>
                                        </td>
                                        <td>
                                            <text><%=cv.getTencv()%></text>
                                        </td>
                                        <td>
                                            <a href="suaCV.jsp?macv=<%=cv.getMacv()%>">Edit</a>|
                                            <a href="chiCV.jsp?macv=<%=cv.getMacv()%>">Details</a>|
                                            <a href="xoaCV.jsp?macv=<%=cv.getMacv()%>">Delete</a>
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
