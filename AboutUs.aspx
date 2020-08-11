<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>About US</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="single-page about-page">
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>About Us</h1>
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .page-header -->


       
        <div class="welcome-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6 order-2 order-lg-1">
                        <div class="welcome-content">
                            <header class="entry-header">
                                <h2 class="entry-title">What we Do</h2>
                            </header>
                            <!-- .entry-header -->

                            <div class="entry-content mt-5">
                                <p>
                                    Save Society for the Protection of the Rights of the Child(SPARC) is a national not for profit, Non-Governmental Organization (NGO) working to promote the rights of children living on the street and other vulnerable children in Pakistan.
                              
                                </p>
                                <ul>
                                    <li>We work with local support teams to identify children in crisis and remove them from street life as quickly as possible.</li>
                                    <li>We first try to find and reconnect children to their closest living relatives and provide academic scholarships if finances are an issue.</li>
                                    <li>If the child’s home environment poses a threat to their well-being and we cannot locate other relatives, the child will be offer to live in organozation center.</li>
                                    
                                </ul>
                            </div>
                            <!-- .entry-content -->

                            <div class="entry-footer mt-5">
                            </div>
                            <!-- .entry-footer -->
                        </div>
                        <!-- .welcome-content -->
                    </div>
                    <!-- .col -->

                    <div class="col-12 col-lg-6 order-1 order-lg-2">
                        <img src="images/welcome.jpg" alt="welcome">
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .home-page-icon-boxes -->

        <div class="about-stats">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="circular-progress-bar">
                            <div class="circle" id="loader_1">
                                <strong class="d-flex justify-content-center"></strong>
                            </div>

                            <h3 class="entry-title">Hard Work</h3>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="circular-progress-bar">
                            <div class="circle" id="loader_2">
                                <strong class="d-flex justify-content-center"></strong>
                            </div>

                            <h3 class="entry-title">Pure Love</h3>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="circular-progress-bar">
                            <div class="circle" id="loader_3">
                                <strong class="d-flex justify-content-center"></strong>
                            </div>

                            <h3 class="entry-title">Smart Ideas</h3>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="circular-progress-bar">
                            <div class="circle" id="loader_4">
                                <strong class="d-flex justify-content-center"></strong>
                            </div>

                            <h3 class="entry-title">Good Decisions</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="about-testimonial">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-5">
                        <div class="testimonial-cont">
                            <div class="entry-content">
                                <p>We love to help all the children that have problems in the world. After 15 years we have many goals achieved.</p>
                            </div>


                        </div>
                    </div>

                    <div class="col-12 col-lg-6 order-1 order-lg-2">
                        <img src="images/SCA.jpg" alt="welcome" style="display: block; width: 100%;margin-left:20%; padding: 20px;" />
                    </div>
                    <!-- .col -->
                </div>
            </div>
        </div>

        <div class="help-us">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                        <h2>Help us so we can help others</h2>
                        <asp:Button ID="abt_dnt" runat="server" CssClass="btn-help" Text="Donate Now" OnClick="abt_dnt_Click" />

                        <%-- <a class="btn orange-border" href="#">Donate now</a>--%>
                    </div>
                </div>
            </div>
        </div>

























    </div>

</asp:Content>

