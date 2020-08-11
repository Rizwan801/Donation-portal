<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SponserChild.aspx.cs" Inherits="SponserChild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>
        Sponser A Child
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 203px;
        }
        .auto-style2 {
            height: 44px;
            text-align: center;
        }
        .auto-style4 {
            height: 45px;
            text-align: center;
        }
        .auto-style5 {
            height: 42px;
            text-align: center;
        }
        .auto-style8 {
            height: 39px;
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="single-page sponserchild">
         <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>Sponser A Child</h1>
                </div><!-- .col -->
            </div><!-- .row -->
            <div class="row">
                <div class="col-12 contents">
                    <p>These funds guarantee that your child will receive education and two meals a day. Your sponsorship allows SPARC to continually give these children a better education that will help them to live in future. Thank you for investing in a child’s future. recurring funds is our biggest need.</p>
                </div><!-- .col -->
            </div>
        </div><!-- .container -->
    </div><!-- .page-header -->
        
        <div class="sponserchil-wrap">
      

        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass ="dd" RepeatDirection="Horizontal" RepeatColumns="3">
                        <ItemTemplate>
                            
                            <div class="col-sm-3 col-md-3" style="padding:30px 30px;">
                                <div class="card" style="width: 18rem; padding-top: 10px;">
                                    <div class="card-header">
                                        <label class="entry-title">Name:</label>
                                        <asp:Label ID="Label1" runat="server" cssclass="name" Text='<%# Eval("ChildName") %>'></asp:Label><br />
                                    </div>
                                    <br />

                                    <img src='<%#"/childpics/"+Eval("Picture") %>' width="200" height="250" style="border-radius: 20px; margin: 0 40px;" />

                                    <div class="card-body" >
                                        <a class="btn view" href="ViewChild.aspx?ChildID=<%#Eval("ChildID") %> "  role="button">View Info</a>
                                    </div>
                                </div>

                            </div>

                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" SelectCommand="SELECT [ChildID], [ChildName], [Country], [Address], [City], [Picture], [State], [ContactNo] FROM [Child]"></asp:SqlDataSource>

                </div>
            </div>
        </div>

        <br />
        <br />
        <!-- .container -->
    </div>
    <!-- .featured-cause -->

    </div>

</asp:Content>

