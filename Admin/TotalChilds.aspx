<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="TotalChilds.aspx.cs" Inherits="Admin_TotalChilds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     
    
    <div class="container child-data">
        <div class="row">
        <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="welcome-content">
                        <header class="entry-header">
                            <h2 class="entry-title">Total Childs</h2>
                        </header>
                        <!-- .entry-header -->
                    </div>
                    <!-- .welcome-content -->
                </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                 <table class="table-responsive">
                <asp:Label ID="Label1" runat="server" Text="Yes" Visible="false"></asp:Label>

                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="5" CssClass=" centered table table-responsive table-bordered table-hover" DataKeyNames="ChildID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" Width="100%" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" SelectCommand="SELECT * FROM [Child] WHERE ([Verified] = @Verified)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="Verified" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                     </table>
            </div>
            </div>
        </div>
    
</asp:Content>

