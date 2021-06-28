<%-- 
    Document   : suaTT
    Created on : Jun 8, 2021, 9:30:30 AM
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
                <li class="breadcrumb-item"><a href="dsTT.jsp">Tin Tức</a></li>
                <li class="breadcrumb-item active">Sửa tin tức</li>
            </ol>
            <div class="card mb-4">
                <%

                    int id = Integer.parseInt(request.getParameter("id"));
                    tintucModel tt = new tintucModel();
                    int kq = CSDL.tintuc.searchTinTuc(id, tt);
                    if (kq == 1) {
                %>
                <form class="card-body" action="suaTT" method="post" enctype="multipart/form-data">
                    <div class="form-horizontal">
                        <h4>Sản Phẩm</h4>
                        <hr />
                        <input type="hidden" id="id" name="id" value="<%=tt.getId()%>">
                        <div class="form-group">
                            <text><b>Tiêu đề</b></text>
                            <div class="col-md-6">
                                <input type="text" id="tieude" name="tieude" value="<%=tt.getTieude()%>">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <text><b>Ngày đăng</b></text>
                        <div class="col-md-6">
                            <input type="text" id="ngaydang" name="ngaydang" value="<%=tt.getNgaydang()%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <text><b>Nội dung</b></text>
                        <div class="col-md-6">
                            <textarea class="form-control" placeholder="Nhập mô tả" id="noidung" name="noidung"><%=tt.getNoidung()%></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <text><b>Ảnh</b></text>
                        <%
                            String checkImage = "noImage.png";
                            if (tt.getAnh().equals("") != true) {
                                checkImage = tt.getAnh();
                            }
                        %>
                        <div class="col-md-6">
                            <img src="imageSP/<%=checkImage%>" width="40%" height="40%">
                            <div>
                                <input title="<%=checkImage%>" type="file" id="anh" name="anh" value="<%=checkImage%>">
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
            </div>
            </form>
            <%}%>
<<<<<<< HEAD

           <a href="dsTT.jsp">Quay lại danh sách</a>

=======
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716
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
</html>
