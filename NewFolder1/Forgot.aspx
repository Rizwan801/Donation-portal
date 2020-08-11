<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-8 single_right">
	 	   <div class="login-form-section">
                <div class="login-content">
                  
                        <div class="section-title">
                            <h3>Recover your Account</h3>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-user"></i></span>
                                <asp:TextBox ID="TextBox1" runat="server" Width="292px" placeholder="Enter Your UserName"></asp:TextBox>
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-key"></i></span>
                                <asp:TextBox ID="TextBox2" runat="server" Width="289px" placeholder="Enter Your Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Provide Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                  
                     <div class="forgot">
						
				 		  <div class="login-para">
                               <div class="login-btn">
                      <asp:Button ID="Button1" runat="server" Text="Recover" OnClick="Button1_Click"  />
					</div>
				 		
                              
				 		 </div>
					     <div class="clearfix"> 
                              
                             <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </div>
			        </div>
					
                </div>
         </div>
   </div>
</asp:Content>



