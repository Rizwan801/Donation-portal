<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="single-page contact-page">
        <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>Contact</h1>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->

    <div class="contact-page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-5">
                    <div class="entry-content">
                        <h2>Get In touch with us</h2>

                        <p>Please Fill the form to get touch with us</p>

                        <ul class="contact-social d-flex flex-wrap align-items-center">
                            
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            
                        </ul>

                        <ul class="contact-info p-0">
                            <li><i class="fa fa-phone"></i><span>+92-061-6560 095</span></li>
                            <li><i class="fa fa-envelope"></i><span>multan1@sparcpk.org</span></li>
                            <li><i class="fa fa-map-marker"></i><span>House # 1, Near Al-Huda Hotel, Lari Adda,Vehari Chowk Multan</span></li>
                        </ul>
                    </div>
                </div><!-- .col -->

                <div class="col-12 col-lg-7">
                    <div class="contact-form">
                        <asp:TextBox ID="txtname" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>
                        <textarea name="txtmsg" rows="15" cols="15" placeholder="Messages"></textarea>

                        <span>
                            <asp:Button ID="Button1" cssClass=" cntct-btn" runat="server" Text="Contact Us" OnClick="Button1_Click" />
                            
                        </span>
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                    </div><!-- .contact-form -->
                    

                </div><!-- .col -->

               <%-- <div class="col-12">
                    <div class="contact-gmap">
                        <iframe width="600" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=usa&key=AIzaSyC2LvnNLzWxHgFm_XfpFG9wHUuyEj6rXSs" allowfullscreen></iframe>
                    </div>
                </div>--%>
            </div><!-- .row -->
        </div><!-- .container -->
    </div>

    </div>
</asp:Content>

