<%-- 
    Document   : xoaTTCH
    Created on : Jun 5, 2021, 11:59:00 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.thongTinCuaHangModel"%>
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
                <li class="breadcrumb-item"><a href="#">Thông tin cửa hàng</a></li>
                <li class="breadcrumb-item active">Xóa thông tin cửa hàng</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">

                    <%                                    int id = Integer.parseInt(request.getParameter("id"));
                        thongTinCuaHangModel tt = new thongTinCuaHangModel();
                        int kq = CSDL.thongtincuahang.searchThongTin(id, tt);
                        if (kq == 1) {
                    %>
                    <form method="post" action="xoaTTCH">
                        <hr />
                        <div class="form-group">
                            <text>ID</text>
                            <div class="col-md-6">
                                <input type="hidden" id="id" name="id" value="<%=tt.getId()%>">
                                <text><%=tt.getId()%></text>
                            </div>
                        </div>

                        <div class="form-group">
                            <text>Địa chỉ</text>
                            <div class="col-md-6">
                                <input type="hidden" id="diachi" name="noidung" value="<%=tt.getDiachi()%>">
                                <text><%=tt.getDiachi()%></text>
                            </div>
                        </div> 

                        <input type="hidden" id="id" name="id" value="<%=tt.getId()%>">
                        <div class="form-group">
                            <text>Email</text>
                            <div class="col-md-6">
                                <input type="hidden" id="email" name="email" value="<%=tt.getEmail()%>">
                                <text><%=tt.getEmail()%></text>
                            </div>
                        </div>
                        <div class="form-group">
                            <text>Số điện thoại</text>
                            <div class="col-md-6">
                                <input type="hidden" id="sdtcuahang" name="sdtcuahang" value="<%=tt.getSdtcuahang()%>">
                                <text><%=tt.getSdtcuahang()%></text>
                            </div>
                        </div>
                        <div class="form-actions no-color">
                            <input type="submit" value="Delete" class="btn btn-default" /> |
                            @Html.ActionLink("Back to List", "Index")
                        </div>
                        }
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
