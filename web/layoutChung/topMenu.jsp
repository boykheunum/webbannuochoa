<%-- 
    Document   : topMenu
    Created on : May 23, 2021, 2:56:50 PM
    Author     : Nguyen Tien Dat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.html">LIDAPERFUME</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="about.html"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">Nước Hoa Nam</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">Nước Hoa Nữ</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">Nước Hoa Unisex</a>
                            </div>
                        </li>

                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Tin tức</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">Tin tức Jillian</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">Tin tức Gucci</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">Tin tức Dior</a>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="services.html">Giỏ Hàng</a></li>
                        
                        <li class="nav-item">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                Đăng nhập
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header" style="display: block;">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link active" style="color: blue;" id="home-tab"
                                                       data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                                       aria-selected="true">Đăng nhập</a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link" style="color: blue;" id="profile-tab"
                                                       data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                                                       aria-selected="false">Đăng ký</a>
                                                </li>
                                            </ul>

                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="home" role="tabpanel"
                                                     aria-labelledby="home-tab">
                                                    <form>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Tài Khoản</label>
                                                            <input type="text" class="form-control" id="tendangnhap1" name="tendangnhap">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Mật khẩu</label>
                                                            <input type="password" class="form-control"
                                                                   id="matkhau" name="matkhau">
                                                        </div>
                                                        <div class="form-group form-check">
                                                            <input type="checkbox" class="form-check-input"
                                                                   id="exampleCheck1">
                                                            <label class="form-check-label" for="exampleCheck1">Check me
                                                                out</label>
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Đăng nhập">
                                                        <input type="button" class="btn btn-secondary" data-dismiss="modal"
                                                               value="Hủy">
                                                    </form>
                                                </div>
                                                <div class="tab-pane fade" id="profile" role="tabpanel"
                                                     aria-labelledby="profile-tab">
                                                    <form id="dangky" name="dangky" method="post" action="dangkyUser">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Họ và tên</label>
                                                            <input type="text" class="form-control" id="hoten"
                                                                   name="hoten">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Số điện thoại</label>
                                                            <input type="text" class="form-control" id="sodienthoai"
                                                                   name="sodienthoai">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Số địa chỉ</label>
                                                            <input type="text" class="form-control" id="diachi"
                                                                   name="diachi">
                                                        </div>
                                                        <span id="messBoxErr2" style="color: red"></span>
                                                        <span id="messBox2" style="color: greenyellow"></span>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Tên đăng nhập</label>
                                                            <input type="text" class="form-control" id="tendangnhap2"
                                                                   name="tendangnhap">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Mật khẩu</label>
                                                            <input type="password" class="form-control"
                                                                   id="matkhau" name="matkhau">
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Đăng ký">
                                                        <input type="button" class="btn btn-secondary" data-dismiss="modal"
                                                               value="Hủy">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">  </a></li>
                        <li class="nav-item">
                                <div class="input-group rounded">
                                  <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                                  <span class="input-group-text border-0" id="search-addon">
                                  <i class="fas fa-search"></i>
                                   </span>
                                </div>
                            </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Bootstrap core JS-->
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>
        <!--ajax -->
        <script>
            $(document).ready(function () {
                $('#tendangnhap2').keyup(function () {
                    $.ajax({
                        method: 'POST',
                        url: 'checkUserName',
                        data: {
                            masp: $('#tendangnhap2').val()
                        },
                        success: function (res) {
                            var messBox = document.getElementById('messBox2');
                            var messBoxErr = document.getElementById('messBoxErr2');
                            if (res == 1) {
                                messBox.innerHTML = " ";
                                messBoxErr.innerHTML = "Đã tồn tại userName";

                            } else {
                                messBoxErr.innerHTML = " ";
                                messBox.innerHTML = "userName hợp lệ";

                            }
                        }
                    });
                });
            });
        </script>
    </body>

</html>
