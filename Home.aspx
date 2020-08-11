<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide hero-content-wrap">
                <img src="images/hero.jpg" />

                <div class="hero-content-overlay position-absolute w-100 h-100">
                    <div class="container h-100">
                        <div class="row h-100">
                            <div class="col-12 col-lg-8 d-flex flex-column justify-content-center align-items-start" style="margin-top: -20%;margin-left:5%;">
                                <header class="entry-header">
                                    <h4>Donate To Street Child </h4>
                                    <h3>for a better Future</h3>
                                </header>
                                <!-- .entry-header -->

                                <div class="entry-content mt-4">
                                    <p>These funds guarantee that your child will receive education and two meals a day. Your sponsorship allows SPARC to continually give these children a better education and life that will help them to live in future. Thank you for investing in a child’s future. recurring funds is our biggest need.</p>
                                </div>
                                <!-- .entry-content -->

                                <footer class="entry-footer d-flex flex-wrap align-items-center mt-5">
                                       <asp:Button ID="Button1" class="slider-donate " runat="server" Text="Donate Now" OnClick="Button1_Click" CausesValidation="False"/>
                                   
                                </footer>
                                <!-- .entry-footer -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .hero-content-overlay -->
            </div>
            <!-- .hero-content-wrap -->

            <div class="swiper-slide hero-content-wrap">
                <img src="images/hero.jpg" alt=""/>

                <div class="hero-content-overlay position-absolute w-100 h-100">
                    <div class="container h-100">
                        <div class="row h-100">
                            <div class="col-12 col-lg-8 d-flex flex-column justify-content-center align-items-start" style="margin-top: -20%;margin-left:5%;">
                                <header class="entry-header">
                                    <h4>Donate To Street Child </h4>
                                    <h3>for a better Future</h3>
                                </header>
                                <!-- .entry-header -->

                                <div class="entry-content mt-4">
                                    <p>These funds guarantee that your child will receive education and two meals a day. Your sponsorship allows SPARC to continually give these children a better education and life that will help them to live in future. Thank you for investing in a child’s future. recurring funds is our biggest need.</p>
                                </div>
                                <!-- .entry-content -->

                                <footer class="entry-footer d-flex flex-wrap align-items-center mt-5">
                                    <asp:Button ID="Button2" class="slider-donate " runat="server" Text="Donate Now" onclick="Button2_Click1" CausesValidation="False" />

                                    <%-- <a href="#" class="btn orange-border">Read More</a>--%>
                                </footer>
                                <!-- .entry-footer -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .hero-content-overlay -->
            </div>
            <!-- .hero-content-wrap -->

            <div class="swiper-slide hero-content-wrap">
                <img src="images/hero.jpg" alt="">

                <div class="hero-content-overlay position-absolute w-100 h-100">
                    <div class="container h-100">
                        <div class="row h-100">
                            <div class="col-12 col-lg-8 d-flex flex-column justify-content-center align-items-start" style="margin-top: -20%;margin-left:5%;">
                                <header class="entry-header">
                                    <h4>Donate To Street Child </h4>
                                    <h3>for a better Future</h3>
                                </header>
                                <!-- .entry-header -->

                                <div class="entry-content mt-4">
                                    <p>These funds guarantee that your child will receive education and two meals a day. Your sponsorship allows SPARC to continually give these children a better education and life that will help them to live in future. Thank you for investing in a child’s future. recurring funds is our biggest need.</p>
                                </div>
                                <!-- .entry-content -->
                                <footer class="entry-footer d-flex flex-wrap align-items-center mt-5">
                                    <asp:Button ID="Button3" class="slider-donate " runat="server" Text="Donate Now" OnClick="Button3_Click" CausesValidation="False" />

                                    <%--<a href="#" class="btn orange-border">Read More</a>--%>
                                </footer>
                                <!-- .entry-footer -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .hero-content-overlay -->
            </div>
            <!-- .hero-content-wrap -->
        </div>
        <!-- .swiper-wrapper -->

        <div class="pagination-wrap position-absolute w-100">
            <div class="container">
                <div class="swiper-pagination"></div>
            </div>
            <!-- .container -->
        </div>
        <!-- .pagination-wrap -->

        <!-- Add Arrows -->
        <div class="swiper-button-next flex justify-content-center align-items-center">
            <span>
                <svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg">
                    <path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z" />
                </svg></span>
        </div>

        <div class="swiper-button-prev flex justify-content-center align-items-center">
            <span>
                <svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg">
                    <path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z" />
                </svg></span>
        </div>
    </div>
    <!-- .hero-slider -->
    <div class="home-page-icon-boxes">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box active">
                        <figure class="d-flex justify-content-center">
                            <img src="images/wSC.jpg" width="10%" height="10%"/>
                            
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Who Are Street Child</h3>
                        </header>

                        <div class="entry-content">

                           <p>Children can be found in railway stations, near temples/Churches/Masjids, in markets, under bridges, near bus depots and stops, etc.
                               According to UNICEF street children fall under two categories: “On the street” and “Of the street”.</p>
                        <ul>
                            <li>
                                "Children of the street" are homeless children.
                            </li>
                            <li>
                                "Children on the street" earn a livelihood from street.
                            </li>
                          
                        </ul>
                            
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box">
                        <figure class="d-flex justify-content-center">
                        <%--    <img src="images/donation-gray.png" alt=""/>
                            <img src="images/donation-white.png" alt=""/>--%>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">How they become Street Child</h3>
                        </header>

                       <div class="entry-content">

                           
                          <ul>
                              <li>
Children of the Street are on their own and do not have any parental supervision or care though some do live with other homeless adults.

                              </li>
                              <li>
Children on the street earn a livelihood from street such as street urchins and beggars. They return home at night and have contact with their families. 

                              </li>
                          </ul>
                           <br />
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box">
                        <figure class="d-flex justify-content-center">
                           <%-- <img src="images/charity-gray.png" alt="">
                            <img src="images/charity-white.png" alt="">--%>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">How We Help Them</h3>
                        </header>

                       <div class="entry-content">

                            <ul>
                                <li>Solving the issue is not an easy job; It’s expensive, tough and really a long term mission.</li>

                                <li>Our Organization working to help these children through steps like extending extra health facilities, establishing nutrition programs, providing vocational training, protecting children from abuse, providing night shelters, providing ration cards, etc.</li>

                                    </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->
    </div>
    <!-- .home-page-icon-boxes -->
    <div class="home-page-welcome">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="welcome-content">
                        <header class="entry-header">
                            <h2 class="entry-title">Society for the Protection of the Rights of the Child</h2>
                        </header>
                        <!-- .entry-header -->

                        <div class="entry-content mt-5">
                            <p>Save Society for the Protection of the Rights of the Child(SPARC) is a national not for profit, Non-Governmental Organization (NGO) working to promote the rights of children living on the street and other vulnerable children in Pakistan. Established in 2005 by former street children, SPARCis a legally registered agency operating in Pakistan Multan under the registration number S.5914/8163.
    </p>
                                </div>
                        <!-- .entry-content -->

                        <div class="entry-footer mt-5">
                                    <asp:Button ID="Button4" class="btn-welcome " runat="server" Text="Read More" OnClick="Button4_Click" CausesValidation="False" />

                            
                        </div>
                        <!-- .entry-footer -->
                    </div>
                    <!-- .welcome-content -->
                </div>
                <!-- .col -->

                <div class="col-12 col-lg-6 mt-4 order-1 order-lg-2">
                    <img src="images/welcome.jpg" />
                </div>
                <!-- .col -->
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->
    </div>
    <!-- .home-page-welcome-boxes -->
    <div class="home-page-limestone">
        <div class="container">
            <div class="row align-items-end">
                <div class="coL-12 col-lg-12">
                    <div class="section-heading">
                        <h1 class="entry-title">We love to help all the children that have problems in the world. We want they live their life in better way.</h1>
 </div>
                    <!-- .section-heading -->
                </div>
                <!-- .col -->

               <%-- <div class="col-12 col-lg-6">
                    <div class="milestones d-flex flex-wrap justify-content-between">
                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="images/teamwork.png" alt="" />
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="120" data-speed="2000"></div>
                                    <div class="counter-k">K</div>
                                </div>

                                <h3 class="entry-title">Children helped</h3>
                                <!-- entry-title -->
                            </div>
                            <!-- counter-box -->
                        </div>
                        <!-- .col -->

                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="images/donation.png" alt="">
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="79" data-speed="2000"></div>
                                </div>

                                <h3 class="entry-title">Water wells</h3>
                                <!-- entry-title -->
                            </div>
                            <!-- counter-box -->
                        </div>
                        <!-- .col -->

                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="images/dove.png" alt="">
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="253" data-speed="2000"></div>
                                </div>

                                <h3 class="entry-title">Volunteeres</h3>
                                <!-- entry-title -->
                            </div>
                            <!-- counter-box -->
                        </div>
                        <!-- .col -->
                    </div>
                    <!-- .milestones -->
                </div>--%>
                <!-- .col -->
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->
    </div>
    <!-- .home-page-limestones -->
</asp:Content>

