<%-- 
    Document   : xoaCV
    Created on : Jun 2, 2021, 4:41:05 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.chucVuModel"%>
<%@page import="CSDL.chucVu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Xóa</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <h3>Are you sure you want to delete this?</h3>
                                <%
                                    String macv = request.getParameter("macv");
                                    chucVuModel cv = new chucVuModel();
                                    int kq = CSDL.chucVu.searchChucVu(cv, macv);
                                    if (kq == 1) {
                                %>
                                <form action="xoaCV" method="post">
                                    <h4>Loại Sản Phẩm</h4>
                                    <hr />
                                    <dl class="dl-horizontal">
                                        <dt>
                                            <input type="hidden" id="macv" name="macv" value="<%=cv.getMacv()%>">
                                        </dt>    
                                        <dt>
                                            <text>Tên Loại Sản Phẩm:</text>
                                        </dt>

                                        <dd>
                                            <text id="tenloaisp" name="tenloaisp"><%=cv.getTencv()%></text>
                                        </dd>

                                    </dl>
                                    <div class="form-actions no-color">
                                        <input type="submit" value="Delete" class="btn btn-default" /> |
                                        "Back to List", "Index")                                   
                                    </div>

                                </form>


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
    <%}%>
</html>
