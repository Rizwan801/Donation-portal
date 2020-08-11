<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h3>Recover Password</h3>
            <hr />
            <h5>Please enter your email address, We will send you the instrutions to reset your password.</h5>
            <div class="form-group">

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control required" Width="500px" placeholder="Enter Your UserName"></asp:TextBox>

            </div>
            <div class="form-group">

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control required" Width="500px" placeholder="Enter Your Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Provide Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btPassRec" runat="server" CssClass=" resetpassword " Text="Send" OnClick="btPassRec_Click" />
                    <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />








</asp:Content>

