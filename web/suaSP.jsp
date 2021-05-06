<%-- 
    Document   : suaSP
    Created on : May 2, 2021, 2:06:56 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.loaispModel"%>
<%@page import="Model.sanphamModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cửa Hàng Rau Quả</title>
        <link href="content/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="~/admin/Default/Index">Cửa hàng rau quả</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Quản lý Bán hàng</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                Loại Sản Phẩm
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/admin/LoaiSanPhams/Index">Danh sách</a>
                                    <a class="nav-link" href="~/admin/LoaiSanPhams/Create">Thêm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts1" aria-expanded="false" aria-controls="collapseLayouts">
                                Sản Phẩm
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts1" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/admin/SanPhams/Index">Danh sách</a>
                                    <a class="nav-link" href="~/admin/SanPhams/Create">Thêm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts">
                                Đơn Vị Tính
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/admin/DonViTinhs/Index">Danh sách</a>
                                    <a class="nav-link" href="~/admin/DonViTinhs/Create">Thêm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts">
                                Hóa Đơn
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts3" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/admin/HoaDons/Index">Danh sách</a>
                                    <a class="nav-link" href="~/admin/HoaDons/Create">Thêm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts4" aria-expanded="false" aria-controls="collapseLayouts">
                                Chi Tiết Hóa Đơn
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts4" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/admin/CTHoaDons/Index">Danh sách</a>
                                    <a class="nav-link" href="~/admin/CTHoaDons/Create">Thêm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts5" aria-expanded="false" aria-controls="collapseLayouts">
                                Khách Hàng
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts5" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="~/ThanhToans/Index">Danh sách</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Chi Tiết</li>
                        </ol>
                        <div class="card mb-4">
                            <%

                                String masp = request.getParameter("masp");
                                sanphamModel sp = new sanphamModel();
                                int kq = CSDL.SanPham.searchSP(sp, masp);
                                if (kq == 1) {
                            %>
                            <form class="card-body" action="suaSP" method="post" enctype="multipart/form-data">
                                <div class="form-horizontal">
                                    <h4>Sản Phẩm</h4>
                                    <hr />
                                    <input type="hidden" id="masp" name="masp" value="<%=sp.getMasp()%>">
                                    <div class="form-group">
                                        "Mã loại Sản phẩm"
                                        <div class="col-md-4">
                                            <select class="col-md-4" id="maloaisp" name="maloaisp">
                                                <%
                                                    Vector<loaispModel> ds = new Vector<loaispModel>();
                                                    CSDL.LoaiSP.listLoaiSP(ds);
                                                    for (loaispModel lsp : ds) {
                                                %>
                                                <option><%=lsp.getMaloaisp()%></option>>
                                                <%}%>
                                            </select>>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        "Tên Sản phẩm"
                                        <div class="col-md-6">
                                            <input type="text" id="tensp" name="tensp" value="<%=sp.getTensp()%>">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    "Số lượng"
                                    <div class="col-md-6">
                                        <input type="text" id="soluong" name="soluong" value="<%=sp.getSoluong()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    "Giá nhập"
                                    <div class="col-md-6">
                                        <input type="text" id="gianhap" name="gianhap" value="<%=sp.getGianhap()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    "Giá bán"
                                    <div class="col-md-6">
                                        <input type="text" id="giaban" name="giaban" value="<%=sp.getGiaban()%>">
                                    </div>
                                </div>


                                <div class="form-group">
                                    "Mô tả"
                                    <div class="col-md-6">
                                        <textarea class="form-control" placeholder="Nhập mô tả" id="mota" name="mota"><%=sp.getMota()%></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    "Ảnh"
                                    <%
                                        String checkImage = "noImage";
                                        if (sp.getHinhanh().equals("") != true) {
                                            checkImage = sp.getHinhanh();
                                    %>
                                    <div class="col-md-6">
                                        <img src="imageSP/<%=checkImage%>" width="40%" height="40%">
                                        <div>
                                        <input style="color: transparent;" id="formFileSm" type="file" id="anh" name="anh" value="<%=checkImage%>">
                                        </div>
                                    </div>
                                    <%}%>
                                </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-6">
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
