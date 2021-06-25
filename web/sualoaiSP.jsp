<%-- 
    Document   : sualoaiSP
    Created on : May 1, 2021, 12:12:04 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                <li class="breadcrumb-item active">Sửa loại sản phẩm</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        String maloaisp = request.getParameter("maloaisp");
                        loaispModel lsm = new loaispModel();
                        int kq = CSDL.LoaiSP.searchLoaiSP(lsm, maloaisp);
                        if (kq == 1) {
                    %>
                    <form class="form-horizontal" method="post" action="sualoaiSP">
                        <h4>Loại sản phẩm</h4>
                        <hr />
                        <input type="hidden" name="maloaisp" id="maloaisp" value="<%=lsm.getMaloaisp()%>">
                        <div class="form-group">
                            <text>Tên loại sản phẩm</text>
                            <div class="col-md-10">
                                <input type="text" name="tenloaisp" id="tenloaisp" value="<%=lsm.getTenloaisp()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Save" class="btn btn-dark"/>
                            </div>
                        </div>
                    </form>
                    <%}%>

                    <div>
                        <a href="dsloaiSP.jsp">Quay lại danh sách</a>
                    </div>

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

