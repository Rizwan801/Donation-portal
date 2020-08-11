<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewChild.aspx.cs" Inherits="ViewChild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>View Detail
</title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .name {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-offset-5 " style="margin: 5% 5%; color: #fff;">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-lg-8" style="float: left;">
                                <img src='<%#"/childpics/"+Eval("Picture") %>' class="img-thumbnail pic" alt="" />
                            </div>
                             <div class="col-lg-4 welcome-content" style="float: right; top: 0px; margin-top:10px;left: 0px; width: 88%; height: 208px;">
                                <table class="table-responsive" style="table-layout:fixed;width:200px;">
                                    <tr>
                                        <td>
                                            <label class="headings">Name:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label1" runat="server" CssClass="name" Text='<%# Eval("ChildName") %>'></asp:Label>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="headings">Country:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label2" runat="server" CssClass="name" Text='<%#Eval("Country") %>'></asp:Label>


                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="headings">State:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label6" runat="server" CssClass="name" Text='<%#Eval("State") %>'></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <label class="headings">City:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label3" runat="server" CssClass="name" Text='<%#Eval("City") %>'></asp:Label>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="headings">Address:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label5" runat="server" CssClass="name" Text='<%#Eval("Address") %>'></asp:Label>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="headings">Contact No:</label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label4" runat="server" CssClass="name" Text='<%#Eval("ContactNo") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <a class="sponser" href="Donate.aspx?ChildID=<%#Eval("ChildID") %> "  role="button">Sponser Now</a>
                                           <%-- <asp:Button ID="Button1" runat="server" CssClass="sponser" Text="Sponser Now" OnClick="Button1_Click" />--%>

                                        </td>

                                    </tr>
                                </table>



                            </div>

                           <%-- <div class="col-lg-4 welcome-content" style="float: right;">

                                <label>Name:</label><asp:Label ID="Label1" runat="server" CssClass="name" Text='<%# Eval("ChildName") %>'></asp:Label><br />
                                <label>Country:</label><asp:Label ID="Label2" runat="server" CssClass="name" Text='<%#Eval("Country") %>'></asp:Label><br />
                                <label>City:</label><asp:Label ID="Label6" runat="server" CssClass="name" Text='<%#Eval("City") %>'></asp:Label><br />
                                <label>State:</label><asp:Label ID="Label3" runat="server" CssClass="name" Text='<%#Eval("State") %>'></asp:Label><br />

                                <label>Address:</label><asp:Label ID="Label5" runat="server" CssClass="name" Text='<%#Eval("Address") %>'></asp:Label><br />
                                 <label>ContactNo:</label><asp:Label ID="Label4" runat="server" CssClass="name" Text='<%#Eval("ContactNo") %>'></asp:Label>
                                  

                            </div>--%>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCDSCon %>" SelectCommand="SELECT [ChildName], [Country], [City],[State], [Address], [Picture], [ContactNo],[ChildID] FROM [Child] WHERE ([ChildID] = @ChildID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ChildID" QueryStringField="ChildID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    





                </div>
            </div>

        </div>
    </div>


    <br />
    <br />
    <br />
    <br />
</asp:Content>

