<%-- 
    Document   : suaSP
    Created on : May 2, 2021, 2:06:56 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.loaispModel"%>
<%@page import="Model.sanphamModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="dsSP.jsp">Sản Phẩm</a></li>
                <li class="breadcrumb-item active">Sửa Sản Phẩm</li>
            </ol>
            <div class="card mb-10">
                <%

                    String masp = request.getParameter("masp");
                    sanphamModel sp = new sanphamModel();
                    int kq = CSDL.SanPham.searchSP(sp, masp);
                    if (kq == 1) {
                %>
                <form class="card-body" action="suaSP" method="post" enctype="multipart/form-data">
                    <div class="form-horizontal">
                        <h4>Sản Phẩm</h4>
                    </div>    
                    <hr />
                    <input type="hidden" id="masp" name="masp" value="<%=sp.getMasp()%>">
                    <div class="form-group">
                        <text><b>Mã loại Sản phẩm</b></text>
                        <div class="col-md-10">
                            <select class="col-md-10" id="maloaisp" name="maloaisp">
                                <%
                                    Vector<loaispModel> ds = new Vector<loaispModel>();
                                    CSDL.LoaiSP.listLoaiSP(ds);
                                    for (loaispModel lsp : ds) {
                                %>
                                <option><%=lsp.getMaloaisp()%></option>>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <text><b>Tên Sản phẩm</b></text>
                        <div class="col-md-10">
                            <input class="col-md-10" type="text" id="tensp" name="tensp" value="<%=sp.getTensp()%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <text><b>Số lượng</b></text>
                        <div class="col-md-10">
                            <input class="col-md-10" type="text" id="soluong" name="soluong" value="<%=sp.getSoluong()%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <text><b>Giá nhập</b></text>
                        <div class="col-md-10">
                            <input class="col-md-10" type="text" id="gianhap" name="gianhap" value="<%=sp.getGianhap()%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <text><b>Giá bán</b></text>
                        <div class="col-md-10">
                            <input class="col-md-10" type="text" id="giaban" name="giaban" value="<%=sp.getGiaban()%>">
                        </div>
                    </div>


                    <div class="form-group">
                        <text><b>Mô tả</b></text>
                        <div class="col-md-10">
                            <textarea class="col-md-10" class="form-control " id="mota" name="mota"><%=sp.getMota()%></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <text><b>Ảnh</b></text>
                        <%
                            String checkImage = "noImage.png";
                            if (sp.getHinhanh().equals("") != true) {
                                checkImage = sp.getHinhanh();
                            }
                        %>
                        <div class="col-md-10">
                            <img src="imageSP/<%=checkImage%>" width="40%" height="30%">
                            <div>
                                <input title="<%=checkImage%>" type="file" id="formFileSm" name="anh" value="<%=checkImage%>">
                            </div>
                            <input  type="hidden" id="anhhientai" name="anhhientai" value="<%=sp.getHinhanh()%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-6">
                            <input type="submit" value="Save" class="btn btn-dark" >
                        </div>
                    </div>
                </form>
                <%}%>
            </div>
            <div>
                @Html.ActionLink("Back to List", "Index")
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
</html>
