<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserPanel.aspx.cs" Inherits="UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        .panel.with-nav-tabs .panel-heading {
            padding: 5px 5px 0 5px;
            background-color: #CC0033;
        }

        .panel.with-nav-tabs .nav-tabs {
            border-bottom: none;
        }

        .panel.with-nav-tabs .nav-justified {
            margin-bottom: -1px;
        }

        /********************************************************************/
        /*** PANEL PRIMARY ***/
        .user-panel {
            border-color: #CC0033;
        }

        .with-nav-tabs.user-panel .nav-tabs > li > a,
        .with-nav-tabs.user-panel .nav-tabs > li > a:hover,
        .with-nav-tabs.user-panel .nav-tabs > li > a:focus {
            color: #fff;
        }

            .with-nav-tabs.user-panel .nav-tabs > .open > a,
            .with-nav-tabs.user-panel .nav-tabs > .open > a:hover,
            .with-nav-tabs.user-panel .nav-tabs > .open > a:focus,
            .with-nav-tabs.user-panel .nav-tabs > li > a:hover,
            .with-nav-tabs.user-panel .nav-tabs > li > a:focus {
                color: #CC0033;
                background-color: #fff;
                border-color: transparent;
            }

        .with-nav-tabs.user-panel .nav-tabs > li.active > a,
        .with-nav-tabs.user-panel .nav-tabs > li.active > a:hover,
        .with-nav-tabs.user-panel .nav-tabs > li.active > a:focus {
            color: #CC0033;
            background-color: #fff;
            border-color: #CC0033;
            border-bottom-color: transparent;
        }


        .btn-updation{
    display: inline-block;
    padding: 5px 10px;    /*10,20*/
    font-size: 16px;
    font-weight: 100;      /*500*/
    line-height: 1;
    color: #fff;
    text-decoration: navajowhite;
    background-color: #CC0033;
    border-radius:15px;
}
   .btn-updation:hover {
        background-color:#fff;
    color: black;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>My Profile
                            </h2>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="panel with-nav-tabs user-panel">
                                    <div class="panel-heading">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab1primary" data-toggle="tab">Account Settings</a></li>
                                            <li><a href=" #tab2primary" data-toggle="tab" runat="server">Your Donations</a></li>
                                            <li><a href="#tab3primary" data-toggle="tab">Non-Verified Child</a></li>
                                            <%--<li><a href="#tab4primary" data-toggle="tab">Sponser Child</a></li>--%>
                                            <%-- <li class="dropdown">
                                <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#tab4primary" data-toggle="tab">Primary 4</a></li>
                                    <li><a href="#tab5primary" data-toggle="tab">Primary 5</a></li>
                                </ul>
                            </li>--%>
                                        </ul>
                                    </div>
                                    <div class="panel-body">
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" id="tab1primary">
                                                <br />
                                               <div class="row">
                                                   
                                                    <div class="col-lg-6 centered">

                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                                                                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control required txt-box" placeholder="User Name" MaxLength="100"></asp:TextBox>

                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <asp:Label ID="Label2" runat="server" Text="User Email"></asp:Label>
                                                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control required txt-box" placeholder="Email" type="email"></asp:TextBox>

                                                                </div>
                                                            </div>
                                                        </div>

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
                                                                    <asp:TextBox ID="txtCpass" runat="server" CssClass="form-control required" placeholder="Change Password" type="password"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click"/>
                                                        <asp:Label ID="lbl_msg" runat="server" ForeColor="Green"></asp:Label>
                                                         <br />
                                                    </div>
                                                </div>
                                                <br />
                                                <br />

                                            </div>
                                            <div class="tab-pane fade col-lg-8 centered" id="tab2primary">
                                                <br />
                                                <br />
                                                <div class="row">
                                                <div class="col-lg-12 ">
                                   <table class="table-responsive">
                                                <asp:GridView ID="GridView3" runat="server" AllowPaging="True"  AutoGenerateColumns="False" DataKeyNames="DID" CssClass=" centered table table-responsive table-bordered table-hover" CellPadding="5" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." AllowSorting="True" ForeColor="#333333" Width="200%" >
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:BoundField DataField="DID" HeaderText="DID" ReadOnly="True" SortExpression="DID" />
                                                <asp:BoundField DataField="Donation_Amount" HeaderText="Donation_Amount" SortExpression="Donation_Amount" />
                                                <asp:BoundField DataField="Donation_Date" HeaderText="Donation_Date" SortExpression="Donation_Date" />
                                                <asp:BoundField DataField="DonorID" HeaderText="DonorID" SortExpression="DonorID" />
                                                <asp:BoundField DataField="DMethod" HeaderText="DMethod" SortExpression="DMethod" />
                                                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                            </Columns>
                                            <EditRowStyle BackColor="#999999" />
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#CC0033" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" DeleteCommand="DELETE FROM [Donations] WHERE [DID] = @DID" InsertCommand="INSERT INTO [Donations] ([Donation_Amount], [Donation_Date], [DonorID], [DMethod], [UserID]) VALUES (@Donation_Amount, @Donation_Date, @DonorID, @DMethod, @UserID)" SelectCommand="SELECT [DID], [Donation_Amount], [Donation_Date], [DonorID], [DMethod], [UserID] FROM [Donations] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Donations] SET [Donation_Amount] = @Donation_Amount, [Donation_Date] = @Donation_Date, [DonorID] = @DonorID, [DMethod] = @DMethod, [UserID] = @UserID WHERE [DID] = @DID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="DID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Donation_Amount" Type="Int32" />
                                                <asp:Parameter Name="Donation_Date" Type="String" />
                                                <asp:Parameter Name="DonorID" Type="Int32" />
                                                <asp:Parameter Name="DMethod" Type="String" />
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Donation_Amount" Type="Int32" />
                                                <asp:Parameter Name="Donation_Date" Type="String" />
                                                <asp:Parameter Name="DonorID" Type="Int32" />
                                                <asp:Parameter Name="DMethod" Type="String" />
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                                <asp:Parameter Name="DID" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
   <br /></table></div>
                                              </div>  
                                            </div>
                                            <div class="tab-pane fade" id="tab3primary">

                                                <asp:Label ID="lblverifyno" runat="server" Text="NO" Visible="false"></asp:Label>
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ChildID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowPaging="True">
                                                    <Columns>
                                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                        <asp:BoundField DataField="ChildID" HeaderText="ChildID" ReadOnly="True" SortExpression="ChildID" />
                                                        <asp:BoundField DataField="ChildName" HeaderText="ChildName" SortExpression="ChildName" />
                                                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                        <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                                                        <asp:BoundField DataField="Verified" HeaderText="Verified" SortExpression="Verified" />
                                                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" DeleteCommand="DELETE FROM [Child] WHERE [ChildID] = @ChildID" InsertCommand="INSERT INTO [Child] ([ChildName], [Country], [City], [Address], [Picture], [Verified], [State], [ContactNo], [UserID], [Date]) VALUES (@ChildName, @Country, @City, @Address, @Picture, @Verified, @State, @ContactNo, @UserID, @Date)" SelectCommand="SELECT [ChildID], [ChildName], [Country], [City], [Address], [Picture], [Verified], [State], [ContactNo], [UserID], [Date] FROM [Child] WHERE (([Verified] = @Verified) AND ([UserID] = @UserID))" UpdateCommand="UPDATE [Child] SET [ChildName] = @ChildName, [Country] = @Country, [City] = @City, [Address] = @Address, [Picture] = @Picture, [Verified] = @Verified, [State] = @State, [ContactNo] = @ContactNo, [UserID] = @UserID, [Date] = @Date WHERE [ChildID] = @ChildID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ChildID" Type="Int32" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="ChildName" Type="String" />
                                                        <asp:Parameter Name="Country" Type="String" />
                                                        <asp:Parameter Name="City" Type="String" />
                                                        <asp:Parameter Name="Address" Type="String" />
                                                        <asp:Parameter Name="Picture" Type="String" />
                                                        <asp:Parameter Name="Verified" Type="String" />
                                                        <asp:Parameter Name="State" Type="String" />
                                                        <asp:Parameter Name="ContactNo" Type="Decimal" />
                                                        <asp:Parameter Name="UserID" Type="Int32" />
                                                        <asp:Parameter DbType="Date" Name="Date" />
                                                    </InsertParameters>
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="lblverifyno" Name="Verified" PropertyName="Text" Type="String" />
                                                        <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="ChildName" Type="String" />
                                                        <asp:Parameter Name="Country" Type="String" />
                                                        <asp:Parameter Name="City" Type="String" />
                                                        <asp:Parameter Name="Address" Type="String" />
                                                        <asp:Parameter Name="Picture" Type="String" />
                                                        <asp:Parameter Name="Verified" Type="String" />
                                                        <asp:Parameter Name="State" Type="String" />
                                                        <asp:Parameter Name="ContactNo" Type="Decimal" />
                                                        <asp:Parameter Name="UserID" Type="Int32" />
                                                        <asp:Parameter DbType="Date" Name="Date" />
                                                        <asp:Parameter Name="ChildID" Type="Int32" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>

                                            </div>



                                           <%-- <div class="tab-pane fade" id="tab4primary">

                                                

                                            </div>--%>

                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .page-header -->



            </div>
        </div>
    </div>



</asp:Content>

