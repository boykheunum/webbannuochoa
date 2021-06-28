<%-- 
    Document   : themTinTuc
    Created on : Jun 3, 2021, 12:51:28 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="Model.tintucModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usNV = null;
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if (c.getName().equals("usNV")) {
            usNV = c.getValue();
        }
    }
    nhanVienModel nv = new nhanVienModel();
    int kqSearchCV = CSDL.nhanVien.searchCVNhanVien(nv, usNV);
    if (kqSearchCV == 1) {
        String macv = nv.getMacv();
        if (macv.contains("1") == true) {
%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<%
} else {
%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
<%
        }
    }

%>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Thông tin</a></li>
                <li class="breadcrumb-item active">Thêm thông tin </li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">

                    <form class="form-horizontal" method="post" action="themTinTuc" enctype="multipart/form-data">
                        <h4>Thêm tin tức</h4>
                        <hr />
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Tiêu đề</p>
                            <div class="col-sm-10">

                                <input class="col-md-10" type="text" id="tieude" name="tieude">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Nội dung</p>
                            <div class="col-sm-10">

                                <textarea class="col-md-10" type="text" id="noidung" name="noidung"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            
                            <div class="col-sm-10">

                                <input class="col-md-10" type="hidden" id="ngaydang" name="ngaydang">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Ảnh</p>
                            <div class="col-sm-10">

                                <input class="col-md-10" type="file" id="anh" name="anh">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="submit" value="Create" class="btn btn-dark">Thêm Tin Tức</button>
                            </div>
                            <a href="dsTT.jsp" class="btn btn-dark" role="button" aria-pressed="true">Quay lại danh sách</a>
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="content/js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="content/assets/demo/datatables-demo.js"></script>
</body>
