<%-- 
    Document   : hienthiSP
    Created on : May 6, 2021, 1:09:21 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.sanphamModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><!DOCTYPE html>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.html">LIDAPERFUME</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="about.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">Nước Hoa Nam</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">Nước Hoa Nữ</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">Nước Hoa Unisex</a>   
                            </div>
                        </li>

                        <li class="nav-item"><a class="nav-link" href="contact.html">Liên Hệ</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tin Tức</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">Nước Hoa Unisex</a>
                                <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                                <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="services.html">Tìm Kiếm</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Giỏ Hàng</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPages" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tài Khoản</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPages">
                                <a class="dropdown-item" href="full-width.html">Tài Khoản</a>
                                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                                <a class="dropdown-item" href="faq.html">FAQ</a>
                                <a class="dropdown-item" href="404.html">404</a>
                                <a class="dropdown-item" href="pricing.html">Pricing Table</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page header-->
        <header>
            <div class="carousel slide" id="carouselExampleIndicators" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="content/img/anhbia02.jpg" alt="..." />
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Jean Paul Guerlain</h3>
                            <p>Nước hoa là hình ảnh rõ ràng nhất của kỷ niệm</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="content/img/anhbia03.jpg" alt="..." />
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Christian Dior</h3>
                            <p>Nước hoa phụ nữ dùng cho biết nhiều điều hơn cả chữ viết</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="content/img/anhbia01.jpg" alt="..." />
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Blake Lively</h3>
                            <p>Nếu bạn muốn ai đó nhớ bạn, hãy bí mật và xịt nước hoa của bạn ở đâu đó</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>
        <!-- Page Content
        <section class="py-5">
            <div class="container">
                <h1 class="mb-4">Chào mừng bạn đến với Lidaperfume</h1>
                 Marketing Icons Section
                <div class="row">
                    <div class="col-lg-4 mb-4 mb-lg-0">
                        <div class="card h-100">
                            <h4 class="card-header">Card Title</h4>
                            <div class="card-body"><p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p></div>
                            <div class="card-footer"><a class="btn btn-primary" href="#!">Learn More</a></div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4 mb-lg-0">
                        <div class="card h-100">
                            <h4 class="card-header">Card Title</h4>
                            <div class="card-body"><p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p></div>
                            <div class="card-footer"><a class="btn btn-primary" href="#!">Learn More</a></div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card h-100">
                            <h4 class="card-header">Card Title</h4>
                            <div class="card-body"><p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p></div>
                            <div class="card-footer"><a class="btn btn-primary" href="#!">Learn More</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
        <hr class="my-0" />
        <!-- Portfolio Section-->
        <section class="py-5 bg-light">
            <div class="container">
                <h2 class="mb-4">Sản phẩm nổi bật</h2>
                <div class="row">
                    <%
                        Vector<sanphamModel> ds = new Vector<sanphamModel>();
                        int kq = CSDL.SanPham.listSP(ds);
                        if (kq == 1) {
                            for (sanphamModel sp : ds) {
                                String checkImage = "noImage.png";
                                if (sp.getHinhanh().equals("") != true) {
                                    checkImage = sp.getHinhanh();
                                }
                    %>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="card h-100">
                            <a href="hienthichitietSP.jsp?masp=<%=sp.getMasp()%>"><img class="card-img-top" width="348px" height="348px" src="imageSP/<%=checkImage%>" alt="..." /></a>
                            <div class="card-body">
                                <h4 class="card-title"><a href="hienthichitietSP.jsp?masp=<%=sp.getMasp()%>"><%=sp.getTensp()%></a></h4>
                                <!--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>-->
                                <p class="card-text"><%=sp.getGiaban()%></p>
                            </div>
                        </div>
                    </div>
                    <%                         
                            }
                        }
                    %>
                </div>
            </div>
        </section>
        <!-- <hr class="my-0" />
        Features Section
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h2 class="mb-4">Modern Business Features</h2>
                        <p>The Modern Business template by Start Bootstrap includes:</p>
                        <ul>
                            <li><strong>Bootstrap 4.6.0</strong></li>
                            <li>jQuery 3.5.1</li>
                            <li>Font Awesome 5.15.3</li>
                            <li>Working PHP contact form with validation</li>
                            <li>Unstyled page elements for easy customization</li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
                    </div>
                    <div class="col-lg-6"><img class="img-fluid rounded" src="https://via.placeholder.com/700x450" alt="..." /></div>
                </div>
            </div>
        </section>
        <hr class="my-0" /> -->
        <!-- Call to Action-->
        <aside class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-8"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p></div>
                    <div class="col-md-4"><a class="btn btn-lg btn-secondary btn-block" href="#!">Call to Action</a></div>
                </div>
            </div>
        </aside>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>
    </body>
</html>
