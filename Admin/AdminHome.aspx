<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <title>Home Page</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class=" col-lg-12">
                <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="welcome-content">
                        <header class="entry-header">
                            <h2 class="entry-title">Welcome Admin home page</h2>
                        </header>
                        <!-- .entry-header -->
                    </div>
                    <!-- .welcome-content -->
                </div>
                <!-- .col -->

                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                        <div class="card card-statistics">
                            <div class="card-body">
                                <div class="clearfix">
                                    <div class="float-left">
                                        <i class="mdi mdi-cube text-danger icon-lg"></i>
                                    </div>
                                    <div class="float-right">
                                        <p class="mb-0 text-right">Total Childs</p>
                                        <div class="fluid-container">
                                            
                                            <h3 class="font-weight-medium text-right mb-0"><asp:Label ID="tchild" runat="server" ></asp:Label></h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                        <div class="card card-statistics">
                            <div class="card-body">
                                <div class="clearfix">
                                    <div class="float-left">
                                        <i class="mdi mdi-receipt text-warning icon-lg"></i>
                                    </div>
                                    <div class="float-right">
                                        <p class="mb-0 text-right">Total Donations</p>
                                        <div class="fluid-container">
                                            <h3 class="font-weight-medium text-right mb-0"><asp:Label ID="tdonations" runat="server" ></asp:Label><asp:Label ID="Label2" runat="server" ></asp:Label></h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                        <div class="card card-statistics">
                            <div class="card-body">
                                <div class="clearfix">
                                    <div class="float-left">
                                        <i class="mdi mdi-poll-box text-success icon-lg"></i>
                                    </div>
                                    <div class="float-right">
                                        <p class="mb-0 text-right">Total Donors</p>
                                        <div class="fluid-container">
                                            <h3 class="font-weight-medium text-right mb-0"><asp:Label ID="tdonors" runat="server" ></asp:Label></h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <%-- <div  style="overflow:scroll">--%>
            </div>


            <div class="container data">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-12 col-lg-6 order-2 order-lg-1">
                            <div class="welcome-content">
                                <header class="entry-header">
                                    <h2 class="entry-title">New Non-Verified Child</h2>
                                    <br />
                                    <br />
                                </header>
                                <!-- .entry-header -->
                            </div>
                            <!-- .welcome-content -->
                        </div>
                        <!-- .col -->

                        <table class="table-responsive">

                            <asp:Label ID="Label1" runat="server" Text="NO" Visible="false"></asp:Label>

                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CssClass=" centered table table-responsive table-bordered table-hover" DataKeyNames="ChildID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" Width="100%" AllowSorting="True">
                                <AlternatingRowStyle BackColor="white" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="ChildID" HeaderText="ChildID" ReadOnly="True" SortExpression="ChildID" InsertVisible="False" />
                                    <asp:BoundField DataField="ChildName" HeaderText="ChildName" SortExpression="ChildName" />
                                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                                    <asp:BoundField DataField="Verified" HeaderText="Verified" SortExpression="Verified" />
                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />

                                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                    <asp:HyperLinkField DataNavigateUrlFields="ChildID" DataNavigateUrlFormatString="AdminHome.aspx?verify={0}" HeaderText="Verify Child" Text="Verify" />

                                </Columns>
                                <EditRowStyle BackColor="White" />
                                <FooterStyle BackColor="#CC0033" Height="20px" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#CC0033" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" DeleteCommand="DELETE FROM [Child] WHERE [ChildID] = @ChildID" InsertCommand="INSERT INTO [Child] ([ChildName], [Country], [City], [Address], [Picture], [Verified], [State], [ContactNo], [UserID]) VALUES (@ChildName, @Country, @City, @Address, @Picture, @Verified, @State, @ContactNo, @UserID)" SelectCommand="SELECT [ChildID], [ChildName], [Country], [City], [Address], [Picture], [Verified], [State], [ContactNo], [UserID] FROM [Child] WHERE ([Verified] = @Verified)" UpdateCommand="UPDATE [Child] SET [ChildName] = @ChildName, [Country] = @Country, [City] = @City, [Address] = @Address, [Picture] = @Picture, [Verified] = @Verified, [State] = @State, [ContactNo] = @ContactNo, [UserID] = @UserID WHERE [ChildID] = @ChildID">
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
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label1" Name="Verified" PropertyName="Text" Type="String" />
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
                                    <asp:Parameter Name="ChildID" Type="Int32" />
                                </UpdateParameters>
                            
                            </asp:SqlDataSource>
                        </table>


                    </div>
                </div>


            </div>

        </div>
    </div>

</asp:Content>

