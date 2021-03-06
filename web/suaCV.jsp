<%-- 
    Document   : suaCV
    Created on : Jun 2, 2021, 4:19:00 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="Model.chucVuModel"%>
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
                <li class="breadcrumb-item"><a href="index.html">Chức Vụ</a></li>
                <li class="breadcrumb-item active">Sửa Chức Vụ</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        String macv = request.getParameter("macv");
                        chucVuModel cv = new chucVuModel();
                        int kq = CSDL.chucVu.searchChucVu(cv, macv);
                        if (kq == 1) {
                    %>
                    <form class="form-horizontal" method="post" action="suaCV">
                        <h4>Loại sản phẩm</h4>
                        <hr />
                        <div class="form-group">

<<<<<<< HEAD
                             <a href="dsCV.jsp">Quay lại danh sách</a>
=======
                            <input type="hidden" name="macv" id="maloaisp" value="<%=cv.getMacv()%>">
                            <text>Tên chức vụ</text>
                            <div class="col-md-10">                                            
                                <input type="text" name="tencv" id="tenloaisp" value="<%=cv.getTencv()%>">
                            </div>
                        </div>
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Save" class="btn btn-dark" >
                                <button class="btn btn-dark">
                                    <a href="dsCV.jsp" style="color: white; text-decoration: none">Quay lại danh sách</a>
                                </button>
                            </div>
                        </div>
                    </form>
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
