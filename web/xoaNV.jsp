<%-- 
    Document   : xoaNV
    Created on : Jun 2, 2021, 6:55:35 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.chucVuModel"%>
<%@page import="Model.nhanVienModel"%>
<%@page import="java.util.Vector"%>
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
                                int manv = Integer.parseInt(request.getParameter("manv"));
                                nhanVienModel nv = new nhanVienModel();
                                int kq = CSDL.nhanVien.searchNhanVien(nv, manv);
                                if (kq == 1) {
                            %>
                            <form class="card-body" action="xoaNV" method="post">
                                <div class="form-horizontal">
                                    <h4>Sản Phẩm</h4>
                                    <hr />

                                    <div class="form-group">
                                        "Mã chức vụ"
                                        <input type="text" name="macv" id="macv" value="<%=nv.getMacv()%>">
                                    </div>
                                    <input id="manv" type="hidden" name="manv" value="<%=nv.getManv()%>">
                                    <div class="form-group">
                                        "Tên nhân viên"
                                        <div class="col-md-6">
                                            <input type="text" id="tennv" name="tennv" value="<%=nv.getTennv()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        "Số điện thoại"
                                        <div class="col-md-6">
                                            <input type="text" id="soluongsdt" name="sdt" value="<%=nv.getSdt()%>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        "Ngày sinh"
                                        <div class="col-md-6">
                                            <input type="text" id="ngaysinh" name="ngaysinh" value="<%=nv.getNgaysinh()%>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        "Tên Đăng nhập"
                                        <div class="col-md-6">
                                            <input type="text" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        "Tài khoản"
                                        <div class="col-md-6">
                                            <input class="form-control" id="tendangnhap" name="tendangnhap" value="<%=nv.getTendangnhap()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        "Mật khẩu"
                                        <div class="col-md-6">
                                            <input class="form-control" id="matkhau" name="matkhau" value="<%=nv.getMatkhau()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        "Địa chỉ"
                                        <div class="col-md-6">
                                            <input class="form-control" id="diachi" name="diachi" value="<%=nv.getDiachi()%>">
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-md-offset-2 col-md-6">
                                        <input type="submit" value="Save" class="btn btn-default" />
                                    </div>
                                </div>
                            </form>
                        </div>


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
