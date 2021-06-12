<%-- 
    Document   : suaTTCH
    Created on : Jun 4, 2021, 11:03:10 PM
    Author     : quyenlh
--%>


<%@page import="Model.thongTinCuaHangModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Thông Tin Cửa Hàng/a></li>
                            <li class="breadcrumb-item active">Sửa</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <%
                                    int id = Integer.parseInt(request.getParameter("id"));
                                    thongTinCuaHangModel tt = new thongTinCuaHangModel();
                                    int kq = CSDL.thongtincuahang.searchThongTin(id, tt);
                                    if(kq==1){
                                %>
                                <form class="form-horizontal" method="post" action="suaTTCH">
                                    <h4>Loại sản phẩm</h4>
                                    <hr />
                                    <input type="hidden" name="id" id="id" value="<%=tt.getId()%>">
                                    <div class="form-group">
                                        <text>Địa chỉ</text>
                                        <div class="col-md-10">
                                            <input type="text" name="diachi" id="diachi" value="<%=tt.getDiachi()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <text>Số điện thoại</text>
                                        <div class="col-md-10">
                                            <input type="text" name="email" id="email" value="<%=tt.getEmail()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <text>Địa chỉ</text>
                                        <div class="col-md-10">
                                            <input type="text" name="sdt" id=sdt value="<%=tt.getSdtcuahang()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Save" class="btn btn-default" />
                                        </div>
                                    </div>
                                </form>
                                <%}%>

                                <div>
                                    @Html.ActionLink("Back to List", "Index")
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
