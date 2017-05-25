<%-- 
    Document   : newjsp
    Created on : May 2, 2017, 3:19:51 PM
    Author     : wladek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="pull-left col-xs-6 col-sm-6 header_top_left">
                    <p class="text-white">Call us (84) 964 376134</p>
                    </div>
                    <div class="col-xs-6 col-sm-6 pull-right header_top_right">
                        <ul class="header_menu header_user">
                            <li class="header_menu_primary header_menu_item">
                                <a href="javascript:void(0)" class="primary"><span class="header_top_icon icon icon-account"></span><span class="hidden-xs">My account</span></a>
                                <ul class="header_menu_multi hidden">
                                    <li class="header_menu_item"><a href="#">Login</a></li>
                                    <li class="header_menu_item"><a href="#">Register</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="header_menu header_bag">
                            <li class="header_menu_primary header_menu_item">
                                <a href="#" class=""><span class="hidden-xs">My shopping bag</span>(0)<span class="header_top_icon icon icon-shopping-cart"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
        <header class="header container">
            <div class="row">
                <div class="col-sm-6 brand">
                    <a href="index.jsp" class="">We Watch</a>
                </div>
                <div class="col-sm-6 pull-right">
                    <div class="header_search pull-right">
                        <form action="SearchForm">
                            <input class="header_search_input input input-default" type="text" placeholder="search brand or model"/>
                            <button class="header_search_btn btn btn-search"><span class="icon icon-search"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <div class="nav container">
            <ul class="nav_menu">
                <li class="nav_menu_item">
                    <a href="#">Shop by brand<span class="line"></span></a>
                    <div class="nav_sub row">
                        <div class="col-sm-8 col-md-9">
                            content
                        </div>
                        <div class="col-sm-4 col-md-3">
                            imgage
                        </div>
                    </div>
                </li>
                <li class="nav_menu_item">
                    <a href="#">Shop by brand<span class="line"></span></a>
                    
                </li>
                <li class="nav_menu_item">
                    <a href="#">Shop by brand<span class="line"></span></a>
                    
                </li>
            </ul>
        </div>
        
        <div class="home-slider container">
            <div class="slide_item fade">
                <div class="slide_item_wrap" style="background-image: url('assets/images/banner_main_omega_06.jpg')">
                    <a href="#" class="slide_item_link-primary"></a>
                </div>
            </div>
            <div class="slide_item fade">
                <div class="slide_item_wrap" style="background-image: url('assets/images/banner_main_highend.webp')">
                    <a href="#" class="slide_item_link-primary"></a>
                </div>
            </div>
            <div class="slide_item fade">
                <div class="slide_item_wrap" style="background-image: url('assets/images/banner_main_md_2017.webp')">
                    <a href="#" class="slide_item_link-primary"></a>
                </div>
            </div>
            <div class="slide_item-fixed">
                <h4 class="title">Featured brands</h4>
                <a href="#">Citizen</a>
                <a href="#">Seiko</a>
                <a href="#">Fosil</a>
                <a href="#">Omega</a>
                <a href="#">Rolex</a>
                <a href="#">Tissot</a>
            </div>
            <div class="slide_group-btn">
                <button class="btn slide_btn slide_btn-prev"><span class="icon icon-arrow-left"></span></button>
                <button class="btn slide_btn slide_btn-next"><span class="icon icon-arrow-right"></span></button>
            </div>
            
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 hidden-xs">
                    <a href="#" class="pos-relate">
                        <img src="assets/images/citizen-banner.jpg" class="img-responsive"/>
                        <button class="btn btn-go-shop">Shop citizen</button>
                    </a>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div class="item-product">
                                <a href="#" class="item_link-img">
                                    <img src="assets/images/citizen-1.jpg" class="img-responsive"/>
                                </a>
                                <a class="item_link-text" href="#"><span class="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 class="price m-t-8">$74.49 <span class="red">Save 48%</span></h4>
                            </div>
                        </div>
                        <div class="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div class="item-product">
                                <a href="#" class="item_link-img">
                                    <img src="assets/images/citizen-2.jpg" class="img-responsive"/>
                                </a>
                                <a class="item_link-text" href="#"><span class="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 class="price m-t-8">$74.49 <span class="red">Save 48%</span></h4>
                            </div>
                        </div>
                        <div class="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div class="item-product">
                                <a href="#" class="item_link-img">
                                    <img src="assets/images/citizen-3.jpg" class="img-responsive"/>
                                </a>
                                <a class="item_link-text" href="#"><span class="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 class="price m-t-8">$74.49 <span class="red">Save 48%</span></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 lists-product">
                <div class="slider-wrap">
                  <div class="sliders">
                    <div class="slider item-product item-product-border">
                      <a href="#" class="slider_link item_link-img">
                        <div class="img-wrap">
                          <img src="assets/images/citizen-1.jpg" class="slider_img img-responsive" alt="">
                        </div>
                      </a>
                        <div class="slider_link_text">
                            <a href="#" class="item_link-text"><span class="bold">Citizen</span> arcu erat, accumsan id imperdiet et, porttitor at sem</a>
                            <p class="price bold price-current">3.790.000đ <span class="promotion red m-t-8">30%</span></p>
                          <!--<p class="comment">Chưa có nhận xét</p>-->
                        </div>
                    </div>
                    
                    
                    
                  </div>

                  <div class="sliders_group-btn">
                    <button class="slider_btn slider_btn-next btn">
                        <span class="icon icon-arrow-right"></span>
                    </button>
                    <button class="slider_btn slider_btn-prev btn">
                        <span class="icon icon-arrow-left"></span>
                    </button>
                  </div>
                </div>
            </div>
    </body>
</html>
