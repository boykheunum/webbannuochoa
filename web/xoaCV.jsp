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
                        <div class="form-horizontal">
                            <h4>Xóa chức vụ</h4>
                            <hr />

                            <div class="form-group">
                                <text><b>Mã chức vụ</b></text>
                                <div class="col-md-6">
                                    <input type="hidden" id="macv" name="macv" value="<%=cv.getMacv()%>">
                                    <text><%=cv.getMacv()%></text>
                                </div>
                            </div>
                            <div class="form-group">
                                <text><b>Tên chức vụ</b></text>
                                <div class="col-md-6">
                                    <input type="hidden" id="tencv" name="tencv" value="<%=cv.getTencv()%>">
                                    <text><%=cv.getTencv()%></text>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Save" class="btn btn-dark" >
                                <button class="btn btn-dark">
                                    <a href="dsCV.jsp" style="color: white; text-decoration: none">Quay lại danh sách</a>
                                </button>
                            </div>
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
