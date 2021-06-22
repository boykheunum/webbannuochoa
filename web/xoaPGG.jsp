<%-- 
    Document   : xoaPGG
    Created on : Jun 2, 2021, 9:49:06 AM
    Author     : Nguyen Tien Dat
--%>
<%@page import="Model.phieuGiamGiaModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Sửa</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <%
                                    String idmagiamgia = request.getParameter("idmagiamgia");
                                    phieuGiamGiaModel pgg = new phieuGiamGiaModel();
                                    int kq = CSDL.phieugiamgia.searchPhieuGiamGia(idmagiamgia, pgg);
                                    if (kq == 1) {
                                %>
                                <form class="form-horizontal" method="post" action="xoaPGG">
                                   <div class="form-horizontal">
                                    <h4>Xóa Phiếu giảm giá</h4>
                                    <hr />
                                    <div class="form-group">
                                        <input type="hidden" name="idmagiamgia" id="idmaloaisp" value="<%=pgg.getIdmagiamgia()%>">
                                    </div>
                                    <div class="form-group">
                                        Kiểu giảm giá
                                        <br>
                                        Phần trăm <input type="radio" name="kieugiamgia" id="kieugiamgia" value="1" checked="checked" <%=pgg.isKieugiamgia() ? "checked" : ""%>>
                                        Tiền mặt <input type="radio" name="kieugiamgia" id="kieugiamgia" value="0"<%=pgg.isKieugiamgia() ? "checked" : ""%>>
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                       <text> Ngày bắt đầu</text>
                                        <div class="col-md-6">
                                            <input class="col-md-10" type="hidden" id="ngaybatdau" name="ngaybatdau" value="<%=pgg.getNgaybatdau()%>">
                                            <text><%=pgg.getNgaybatdau()%></text>
                                        </div>
                                    </div>
                                       <div class="form-group">
                                       <text> Ngày kết thúc</text>
                                        <div class="col-md-6">
                                             <input class="col-md-10" type="hidden" id="ngayketthuc" name="ngayketthuc" value="<%=pgg.getNgayketthuc()%>">
                                            <text><%=pgg.getNgayketthuc()%></text>
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                       <text> Số lượng</text>
                                        <div class="col-md-6">
                                             <input class="col-md-10" type="hidden" id="soluong" name="soluong" value="<%=pgg.getSoluong()%>">
                                            <text><%=pgg.getSoluong()%></text>
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                       <text> Giá trị</text>
                                        <div class="col-md-6">
                                               <input class="col-md-10" type="hidden" id="giatri" name="giatri" value="<%=pgg.getGiatri()%>">
                                            <text><%=pgg.getGiatri()%></text>
                                        </div>
                                    </div> 
                                     <div class="form-group">
                                       <text> Điều kiện</text>
                                        <div class="col-md-6">
                                             <input class="col-md-10" type="hidden" id="dieukien" name="dieukien" value="<%=pgg.getDieukien()%>">
                                           <text> <%=pgg.getDieukien()%></text>
                                        </div>
                                    </div>
                                </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Delete" class="btn btn-default" />
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
