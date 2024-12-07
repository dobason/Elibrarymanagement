<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Elibrarymanagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
            
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                      <img width="150px"  src="imgs/generaluser.jpg" />
                                 </center>
                            </div>
                        </div>

                         <div class="row">
                                     <div class="col">
                                          <center>
                                             <h3>Member Sign Up</h3>
                                          </center>
                                      </div>
                               </div>

                           <div class="row">
                  <div class="col-md-6">
                      <label>Full Name</label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="TextBox3"
runat="server" placeholde="Member ID" ></asp:TextBox>   
                   </div>
            </div>
                 
     <div class="col-md-6">
          <label>Date of Birth</label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="TextBox4"
runat="server" placeholde="Member ID" TextMode="Date" ></asp:TextBox>

         </div> 
       </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label>Contact Number</label>
        <div class="form-group">
        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholde="Member ID" ></asp:TextBox>   
               </div>
            </div>
                 
      <div class="col-md-6">
          <label>Email ID</label>
<div class="form-group">
    <asp:TextBox CssClass="form-control" ID="TextBox6"
runat="server" placeholde="Member ID"  ></asp:TextBox>
                </div>
        </div>
                               
                           <div class="row">
                  <div class="col-md-4">
                      <label>State</label>
<div class="form-group">
    <asp:DropDownList Class="form-control" ID="TextBox7"
runat="server">

        <asp:ListItem Text="select" Value="select" />

    </asp:DropDownList>   
                   </div>
            </div>
                 
      <div class="col-md-4">
          <label>City</label>
<div class="form-group">
    <asp:TextBox CssClass="form-control" ID="TextBox8"
runat="server" placeholde="Member ID"  ></asp:TextBox>
                </div>
        </div>
      <div class="col-md-4">
          <label>Pin Code</label>
<div class="form-group">
    <asp:TextBox CssClass="form-control" ID="TextBox9"
runat="server" placeholde="Member ID"  ></asp:TextBox>
                </div>
        </div>

                        
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                runat="server" placeholde="Full Address" TextMode="MultiLine" Rows="2" ></asp:TextBox>
                                    </div>
                                </div>
                               </div>

         
             <div class="row">  
         <div class="col">
<div style="width: 50%; margin: auto;">
    <span class="badge badge-pill badge-info">Login Credentials</span>
             </div>
             </div>
             
               </div>
                 </div>
        
                              <div class="row">
                          <div class="col-md-6">
                              <label>Member ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2"
                              runat="server" placeholde="Member ID" ></asp:TextBox>
</div>
                              </div>
                              <div class="col-md-6">
                                <label>Password</label>
                                  <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox10"
runat="server" placeholde="Password" TextMode="Password"></asp:TextBox>
</div>
                                  </div>
                                  </div>

            
            <div class="form-group">
                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" />
            
            </div>
        
                                  </div>
                                  </div>
                        </div>
                    </div>
                </div>
            
<a href="homepage.aspx" ><< Back To Home</a>
</asp:Content>
