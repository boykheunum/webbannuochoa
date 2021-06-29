<%-- 
    Document   : xoaTT
    Created on : Jun 3, 2021, 3:17:11 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="Model.tintucModel"%>
<%@page import="CSDL.tintuc"%>
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
                <li class="breadcrumb-item"><a href="dsTT.jsp">Tin Tức</a></li>
                <li class="breadcrumb-item active">Xóa tin tức</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">

                    <%                                    int id = Integer.parseInt(request.getParameter("id"));
                        tintucModel tt = new tintucModel();
                        int kq = CSDL.tintuc.searchTinTuc(id, tt);
                        if (kq == 1) {
                    %>
                    <form method="post" action="xoaTT">
                        <h4>Xóa tin tức</h4>
                        <hr />
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">ID bài viết</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="id" name="id" value="<%=tt.getId()%>">
                                <text><%=tt.getId()%></text>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold"> Ngày đăng</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="ngaydang" name="ngaydang" value="<%=tt.getNgaydang()%>">
                                <text><%=tt.getNgaydang()%></text>
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Tiêu đề</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="tieude" name="tieude" value="<%=tt.getTieude()%>">
                                <text><%=tt.getTieude()%></text>
                            </div>
                        </div>       
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Nội dung</p>
                            <div class="col-sm-10">
                                <input type="hidden" id="noidung" name="noidung" value="<%=tt.getNoidung()%>">
                                <text><%=tt.getNoidung()%></text>
                            </div>
                        </div>       
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Ảnh</p>
                            <div class="col-sm-10">
                                <img src="imageSP/<%=tt.getAnh()%>">   
                            </div>
                        </div> 
                        <div class="form-group row">
                            <div class="col-md-offset-2 col-md-10">

                                <button type="submit" value="Create" class="btn btn-dark">Thêm thông tin cửa hàng</button>
                            </div>
                    </form>
                    <%}%>
                    <a href="dsTT.jsp">Quay lại danh sách</a>
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
