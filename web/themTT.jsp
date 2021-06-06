<%-- 
    Document   : themTinTuc
    Created on : Jun 3, 2021, 12:51:28 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.tintucModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Thêm sản phẩm </li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <form class="form-horizontal" method="post" action="themTinTuc" enctype="multipart/form-data">
                                    <h4>Thông tin nhãn hàng</h4>
                                    <hr />
                                    <div class="form-group">
                                        Tiêu đề
                                        <input class="col-md-10" type="text" id="tieude" name="tieude">
                                    </div>
                                    <div class="form-group">
                                        "Nội dung"
                                        <textarea class="col-md-10" type="text" id="noidung" name="noidung"></textarea>
                                    </div>
                                    <div class="form-group">
                                        "Ngày đăng"
                                        <input class="col-md-10" type="text" id="ngaydang" name="ngaydang">
                                    </div>
                                    <div class="form-group">
                                        "Ảnh"
                                        <input class="col-md-10" type="file" id="anh" name="anh">
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Create" class="btn btn-default" />
                                        </div>
                                    </div>
                                </form>
                                }
                                <div>
                                    @Html.ActionLink("Back to List", "Index")
                                    <a href="Danh sách">Danh sách</a>
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
