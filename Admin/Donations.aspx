<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Donations.aspx.cs" Inherits="Admin_Donations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <title>Total Donations</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" CssClass=" centered table table-responsive table-bordered table-hover" DataKeyNames="DID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" Width="100%" AllowSorting="True">
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
                    <FooterStyle BackColor="#CC0033"  Font-Size="Large" ForeColor="White" />
                    <HeaderStyle BackColor="#CC0033" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" DeleteCommand="DELETE FROM [Donations] WHERE [DID] = @DID" InsertCommand="INSERT INTO [Donations] ([Donation_Amount], [Donation_Date], [DonorID], [DMethod], [UserID]) VALUES (@Donation_Amount, @Donation_Date, @DonorID, @DMethod, @UserID)" ProviderName="<%$ ConnectionStrings:SCDSCon.ProviderName %>" SelectCommand="SELECT [DID], [Donation_Amount], [Donation_Date], [DonorID], [DMethod], [UserID] FROM [Donations]" UpdateCommand="UPDATE [Donations] SET [Donation_Amount] = @Donation_Amount, [Donation_Date] = @Donation_Date, [DonorID] = @DonorID, [DMethod] = @DMethod, [UserID] = @UserID WHERE [DID] = @DID">
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
        <UpdateParameters>
            <asp:Parameter Name="Donation_Amount" Type="Int32" />
            <asp:Parameter Name="Donation_Date" Type="String" />
            <asp:Parameter Name="DonorID" Type="Int32" />
            <asp:Parameter Name="DMethod" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="DID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


















</asp:Content>

