<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset-3 ">
                <div class="panel panel-changepassword">
                    <div class="panel-heading">
                        <h3>Change Password
                        </h3>


                    </div>
                    <div class="panel-body">
                        <div class="row">

                            <div class="col-lg-6 centered " style="margin:10%;">
           
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Text="Old Password"></asp:Label>
                                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control required txt-box" placeholder="Password" type="password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
                                            <asp:TextBox ID="txtChange" runat="server" CssClass="form-control required" placeholder="Change Password" type="password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                                                <asp:TextBox ID="txtCpass" runat="server" CssClass="form-control required" placeholder="Confirm Password" type="password"></asp:TextBox>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCpass" ControlToCompare="txtChange" ForeColor="red" ErrorMessage="Password Not Matched"></asp:CompareValidator>
                                            </div>
                                        </div>
                                    </div>
                                <asp:Button ID="Button1" runat="server" CssClass="changepassword" Text="Save Changings" OnClick="Button1_Click" />
                                <asp:Label ID="lbl_msg" runat="server" ForeColor="Green"></asp:Label>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>

