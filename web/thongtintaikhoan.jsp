


<%@page import="Model.nguoiDungModel"%>
<%@page import="Model.sanphamModel"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cửa Hàng Nước Hoa</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="content/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="content/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="layoutChung/topMenu.jsp"/>
        <!-- Page Content-->
        <section class="py-5">
            <div class="container">
                <!-- Page Heading/Breadcrumbs-->

                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Lịch sử đơn hàng</li>
                </ol>
                <!-- Content Row-->
                <div class="row">
                    <!-- Sidebar Column-->
                    <div class="col-lg-3 mb-4">
                        <div class="list-group">
                            <a class="list-group-item" href="#">Thông tin tài khoản</a>
                            <a class="list-group-item" href="#">Lịch sử đơn hàng</a>

                        </div>
                    </div>
                    <!-- Content Column-->
                    <div class="col-lg-9 mb-4">
                        <h5>Thông tin tài khoản</h5>
                        <%
                            int makh = Integer.parseInt(request.getParameter("makh"));
                            nguoiDungModel nd = new nguoiDungModel();
                            int searhNguoiDung = CSDL.nguoidung.searchNguoiDung(nd, makh);
                            if (searhNguoiDung == 1) {
                        %>
                        <form method="post" action="suaTTND">
                            <input type="hidden" class="form-control" id="colFormLabel" name="makh" value="<%=nd.getMakh()%>" >
                            <input type="hidden" class="form-control" id="colFormLabel" name="matkhau" value="<%=nd.getMatkhau()%>" >
                            <input type="hidden" class="form-control" id="colFormLabel" name="tendangnhap" value="<%=nd.getTendangnhap()%>" >
                            <div class="form-group row">
                                <label for="colFormLabel" class="col-sm-2 col-form-label">Họ tên</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="colFormLabel" name="hovaten" value="<%=nd.getHovaten()%>" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="colFormLabel" class="col-sm-2 col-form-label">Số điện thoại</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="colFormLabel" name="sdt" value="<%=nd.getSdt()%>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="colFormLabel" class="col-sm-2 col-form-label">Địa chỉ</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="colFormLabel" name="diachi" value="<%=nd.getDiachi()%>">
                                </div>
                            </div> 
                            <button type="submit" class="btn btn-warning" >Cập nhật</button>
                        </form> 
                        <%}%>
                    </div>
                </div>
            </div>
        </section>
        <hr class="my-0" />


        <!-- Footer-->
        <jsp:include page="layoutChung/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>