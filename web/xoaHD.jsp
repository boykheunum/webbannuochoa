<%-- 
    Document   : xoaHD
    Created on : Jun 28, 2021, 1:03:57 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.hoaDonModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="dsHD.jsp">Hóa đơn</a></li>
                    <li class="breadcrumb-item active">Xóa hóa đơn</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        
                        <%
                            int mahd = Integer.parseInt(request.getParameter("mahd"));
                            hoaDonModel hd = new hoaDonModel();
                            int kq = CSDL.hoadon.searchHoaDon(mahd, hd);
                            if (kq == 1) {
                        %>
                        <form method="post" action="xoaHD">
                            <div class="form-horizontal">
                                <h4>Xóa hóa đơn</h4>
                                <hr/>
                                        <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mã hóa đơn</p>
                                <div class="col-sm-10">
                                        <input class="col-md-10" type="hidden" id="mahd" name="mahd" value="<%=hd.getMahd()%>">
                                        <text><%=hd.getMahd()%></text>
                                    </div>
                                </div>
                                      <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mã khách hàng</p>
                                <div class="col-sm-10">
                                        <input type="hidden" id="makh" name="makh" value="<%=hd.getMakh()%>">
                                        <text><%=hd.getMakh()%></text>
                                    </div>
                                </div>  
                                        <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Ngày bán</p>
                                <div class="col-sm-10">
                                        <input type="hidden" id="ngayban" name="ngayban" value="<%=hd.getNgayban()%>">
                                        <text><%=hd.getNgayban()%></text>
                                    </div>
                                </div>
                                       <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Tổng tiền</p>
                                <div class="col-sm-10">
                                        <input type="hidden" id="tongtien" name="tongtien" value="<%=hd.getTongtien()%>">
                                        <text><%=hd.getTongtien()%></text>
                                    </div>
                                </div>
                               
                                
                                <div class="form-actions no-color">
                                    <input type="submit" value="Delete" class="btn btn-dark">
                                </div>
                            </div> 
                        </form>
                        <%}%>
                        <a href="dsHD.jsp">Quay lại danh sách</a>
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
