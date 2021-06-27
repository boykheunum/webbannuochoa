<%-- Document : giohang Created on : Jun 3, 2021, 3:56:07 PM Author : Nguyen Tien Dat --%>

<%@page import="java.util.Set" %>
<%@page import="Model.sanphamModel" %>
<%@page import="java.util.TreeMap" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
        crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="content/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <jsp:include page="layoutChung/topMenu.jsp" />
        <div class="container bg-white rounded-top mt-5" id="zero-pad">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10 col-12 pt-3">
                    <div class="d-flex">
                        <div class="pt-1">
                            <h4>My T-shirt</h4>
                        </div>
                    </div>
                    <div class="d-flex flex-column pt-4">
                        <div>
                            <h5 class="text-uppercase font-weight-normal">shopping bag</h5>
                        </div>
                    </div>
                    <table class="table table-responsive">
                        <thead>
                            <tr>
                                <th class="text-center" id="image" style="width: 15%">IMAGE</th>
                                <th class="text-center" id="produc" style="width: 20%">PRODUCTS</th>
                                <th class="text-center" id="prc" style="width: 15%">PRICE</th>
                                <th class="text-center" id="quantity" style="width: 20%">QUANTITY
                                </th>
                                <th class="text-center" id="total" style="width: 40%">TOTAL</th>
                                <th class="text-center" id="thaotac" style="width: 5%">#</th>

                            </tr>
                        </thead>
                        <tbody>
                            <!-- thong tin nhung san pham-->
                            <% //int soluong1=(int) session.getAttribute("soluong"); TreeMap<String,
                                TreeMap<String, Integer> cart = (TreeMap<String, Integer>) session.getAttribute("cart");
                                if (cart == null) {
                                    out.println("<h3> chưa có giỏ hàng</h3>");
                                } else {
                                    float tongtien = 0;
                                    for (String masp : cart.keySet()) {
                                        sanphamModel sp = new sanphamModel();
                                        int ketqua = CSDL.SanPham.searchSP(sp, masp);
                                        if (ketqua > 0) {
                                            int soluong = cart.get(masp);
                                            float thanhtien = soluong * sp.getGiaban();
                                            tongtien += thanhtien;
                            %>
                            <tr>

                                <td class="text-center"><img
                                        src="imageSP/<%=sp.getHinhanh()%>" width="150"
                                        height="150" alt="" id="image">
                                </td>

                                <td class="text-center">
                                    <h6>
                                        <%=sp.getTensp()%>
                                    </h6>
                                </td>

                                <td class="text-center"><b>
                                        <%=sp.getGiaban()%>
                                    </b>
                                </td>

                                <td class="d-flex justify-content-between"
                                    style="width: 100%">
                                    <button type="button"
                                            class="btn btn-dark btn-sm minus-btn"><i
                                            class="fa fa-minus"></i>
                                    </button>
                                    <span style="width: fit-content"><input
                                            style="width: 100%" type="number"
                                            class="soluongmua1" name="soluongmua1"
                                            value="<%=soluong%>" max="<%=sp.getSoluong()%>" min="1">
                                    </span>
                                    <input type="hidden" id="masp" name="masp"
                                           value="<%=sp.getMasp()%>">
                                    <button type="button"
                                            class="btn btn-dark btn-sm plus-btn"><i
                                            class="fa fa-plus"></i>
                                    </button>
                                </td>
                                <td class="text-center">
                                    <b data-thanhtien="<%=sp.getGiaban()%>"><%=thanhtien%></b>
                                </td>
                                <td class="text-center"><a
                                        href="deleteCart?masp=<%=sp.getMasp()%>">Xóa</a>
                                </td>
                            </tr>

                            <% TreeMap<String, Integer> hoadon = (TreeMap<String, Integer>) session.getAttribute("cart");
                                        hoadon.put(masp, soluong);
                                        session.setAttribute("hoadon", hoadon);
                                    }
                                }
                            %>
                        </tbody>
                    </table>

                    <!--ket thuc thong tin nhung san pham-->
                </div>
            </div>
        </div>
        <div class="container bg-light rounded-bottom py-4" id="zero-pad">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10 col-12">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="px-md-0 px-1" id="footer-font">
                            <b class="pl-md-4">TỔNG TIỀN
                                <span class="pl-md-4" id="TongTien" value="">
                                    <%=tongtien%>
                                </span>
                            </b> 
                        </div>

                        <div>
                            <!-- <form method="post" action="kiemTraTrangThaiDangNhap"><input
                                    class="btn btn-sm bg-dark text-white px-lg-5 px-3" type="submit"
                                    value="THANH TOÁN"></form>
                            <!--                           
                            <button class="btn btn-sm bg-dark text-white px-lg-5 px-3"><a href="xacNhanThongTinThanhToan.jsp" style="text-decoration: none; color: white">THANH TOÁN</a></button>-->
                            <button class="btn btn-sm bg-dark text-white px-lg-5 px-3" id="kiemtradangnhap">THANH TOÁN</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <%}%>
        <!-- Footer-->
        <jsp:include page="layoutChung/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="content/js/scripts.js"></script>
        <script>
            $(document).ready(function () {
                $('.soluongmua1').prop('disabled', true);
                $('.plus-btn').click(function () {
                    var input = $(this).prev().prev().children();



                    input.val(parseInt(input.val()) + 1);

                });
                $('.minus-btn').click(function () {
                    var giatri = $(this).next().children();
                    giatri.val(parseInt(giatri.val()) - 1);
                    if (giatri.val() == 0) {
                        giatri.val(1);
                    }
                });

                // tang so luong trong input
                $('.plus-btn').click(function () {
                    var gt = $(this)
                    $.ajax({
                        method: 'POST',
                        url: 'cart',
                        data: {
                            masp: gt.prev().val(),
                            giatritanggiam: 1
                        },
                        success: function (res) {
                            var thanhtien = gt.parent().next().children()
                            thanhtien.html(parseFloat(parseFloat(thanhtien.html()) + parseFloat(thanhtien.attr("data-thanhtien"))))
                            $("#TongTien").html(parseFloat($("#TongTien").html()) + parseFloat(thanhtien.attr("data-thanhtien")))

                        }
                    });
                });

                //giam so luong
                $('.minus-btn').click(function (e) {
                    var gt = $(this);
                    if (gt.next().children().val() == 1) {
                    } else {
                        $.ajax({
                            method: 'post',
                            url: 'cart',
                            data: {
                                masp: gt.next().next().val(),
                                giatritanggiam: '-1'
                            },
                            success: function (res) {
                                var thanhtien = gt.parent().next().children();
                                if (parseFloat(thanhtien.html()) > parseFloat(thanhtien.attr("data-thanhtien"))) {
                                    thanhtien.html(parseFloat(parseFloat(thanhtien.html()) - parseFloat(thanhtien.attr("data-thanhtien"))))
                                }
                                if (parseFloat($("#TongTien").html()) - parseFloat(thanhtien.attr("data-thanhtien")) > 0) {
                                    $("#TongTien").html(parseFloat($("#TongTien").html()) - parseFloat(thanhtien.attr("data-thanhtien")))
                                }
                            }
                        });
                    }
                });

                //su ly ma giam gia


                //kiem tra dang nhap
                $("#kiemtradangnhap").click(function () {
                    $.ajax({
                        method: "post",
                        url: "kiemTraTrangThaiDangNhap",
                        success: function (res) {
                            if (res == "-1") {

                                $(".DangNhap").click()
                            } else {
                                location.href = "/WebBanSach/xacNhanThongTinThanhToan.jsp"
                            }
                        }

                    });
                });

            });

        </script>
    </body>

</html>