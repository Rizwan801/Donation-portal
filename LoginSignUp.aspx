<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginSignUp.aspx.cs" Inherits="LoginSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="mycontent-left" style="border-right: 3px solid #fff;">

                                    <a href="#" class="active" id="login-form-link">Login</a>
                                </div>
                            </div>

                            <div class="col-xs-6">
                                <div class="mycontent-right">
                                    <a href="#" id="register-form-link">Register</a>
                                </div>
                            </div>
                        </div>
                        <hr />
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <%--<form id="login-form" action="http://phpoll.com/login/process" method="post" role="form" style="display: block;">--%>
                                <div class="login" id="login-form" style="display: block;">

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control required txt-box" placeholder="User Name"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>
                                    <%--<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">--%>


                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control required txt-box" placeholder="Password" TextMode="Password"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group ">
                                                <asp:CheckBox ID="remember" runat="server" name="remember" />

                                                <label for="remember">Remember Me</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <div class="form-group">

                                                <asp:Button ID="btn_login" runat="server" CssClass=" form-control btn-login" Text="Login" OnClick="btn_login_Click" CausesValidation="False" />

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="text-center">
                                                    <a href="ForgotPassword.aspx" tabindex="5" class="forgot-password">Forgot Password?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                                </div>

                                <div class="register" id="register-form" style="display: none;">

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control required txt-box" placeholder="User Name" MaxLength="100"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red" ErrorMessage="*Fill Required Field" ControlToValidate="txtusername"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control required txt-box" placeholder="Email" type="email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="*Fill Required Field" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Provide Valid Email Address" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control required txt-box" placeholder="Password" type="password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ErrorMessage="*Fill Required Field" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtCpass" runat="server" CssClass="form-control required" placeholder="Confirm Password" type="password"></asp:TextBox>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCpass" ControlToCompare="txtpass" ForeColor="red" ErrorMessage="Password Not Matched"></asp:CompareValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <div class="form-group">

                                                <asp:Button ID="btn_signup" runat="server" CssClass="form-control  btn-register  " Text="Register" OnClick="btn_signup_Click" />
                                                
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>







    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <script>
        $(function () {

            $('#login-form-link').click(function (e) {
                $("#login-form").delay(100).fadeIn(100);
                $("#register-form").fadeOut(100);
                $('#register-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });
            $('#register-form-link').click(function (e) {
                $("#register-form").delay(100).fadeIn(100);
                $("#login-form").fadeOut(100);
                $('#login-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });

        });
    </script>


    <br />
    <br />

</asp:Content>

