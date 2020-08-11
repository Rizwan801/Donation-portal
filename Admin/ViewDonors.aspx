<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ViewDonors.aspx.cs" Inherits="Admin_ViewDonors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container donor-data">
         <div class="row">
        <div class="col-12 col-lg-6 ">
                    <div class="welcome-content">
                        <header class="entry-header">
                            <h2 class="entry-title">Total Donors</h2>
                        </header>
                        <!-- .entry-header -->
                    </div>
                    <!-- .welcome-content -->
                </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
              <table class="table-responsive">
                   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="5" CssClass=" centered table table-responsive table-bordered table-hover" DataKeyNames="DonorID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" Width="100%" AllowSorting="True">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DonorID" HeaderText="DonorID" ReadOnly="True" SortExpression="DonorID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#CC0033" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White"/>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" DeleteCommand="DELETE FROM [Donor] WHERE [DonorID] = @DonorID" InsertCommand="INSERT INTO [Donor] ([FirstName], [LastName], [Country], [Address], [City], [ZipCode], [Contact_No], [Email], [UserID], [Date]) VALUES (@FirstName, @LastName, @Country, @Address, @City, @ZipCode, @Contact_No, @Email, @UserID, @Date)" SelectCommand="SELECT [DonorID], [FirstName], [LastName], [Country], [Address], [City], [ZipCode], [Contact_No], [Email], [UserID], [Date] FROM [Donor]" UpdateCommand="UPDATE [Donor] SET [FirstName] = @FirstName, [LastName] = @LastName, [Country] = @Country, [Address] = @Address, [City] = @City, [ZipCode] = @ZipCode, [Contact_No] = @Contact_No, [Email] = @Email, [UserID] = @UserID, [Date] = @Date WHERE [DonorID] = @DonorID">
        <DeleteParameters>
            <asp:Parameter Name="DonorID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="DonorID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                  </table>
            </div>
        </div>
    </div>
    
                 
    



</asp:Content>

