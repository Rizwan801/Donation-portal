<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="single-page sponserchild">
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>Sponser A Child</h1>
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
                <div class="row">
                    <div class="col-12 contents">
                        <p>These funds guarantee that your child will receive education and two meals a day. Your sponsorship allows SPARC to continually give these children a better education that will help them to live in future. Thank you for investing in a child’s future. recurring funds is our biggest need.</p>
                    </div>
                    <!-- .col -->
                </div>
            </div>
            <!-- .container -->
        </div>
        <!-- .page-header -->
        <br />

        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" RepeatLayout="Table ">
                        <ItemTemplate>

                            <div class="col-sm-3 col-md-3" style="padding-bottom: 20px;">
                                <div class="card" style="width: 15rem; padding-top: 10px;">
                                    <div class="card-header" style="background-color: #CC0033; font-size: 16px; text-align: center;">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("ChildName") %>'></asp:Label><br />
                                    </div>
                                    <br />

                                    <img src='<%#"/childpics/"+Eval("Picture") %>' width="200" height="250" style="border-radius: 20px; margin: 0 20px;" />

                                    <div class="card-body" style="text-align: center;">

                                        <asp:Button ID="btn_sponserchild" runat="server" Text="View Info " Style="display: inline-block; padding: 7px 10px; font-size: 14px; font-weight: 500; line-height: 1; color: #fff; text-decoration: navajowhite; background-color: #CC0033; border: 2px solid #fff; border-radius: 12px;" />

                                    </div>
                                </div>

                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" SelectCommand="SELECT [ChildName], [Country], [City], [Address], [Picture], [Area] FROM [Child]"></asp:SqlDataSource>

                </div>
            </div>
        </div>

        <br />
        <br />
    </div>

</asp:Content>







