<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Elibrarymanagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
            
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
                                             <h4>Your Profile</h4>
                                              <span>Account Status</span>
                                                <asp:Label CssClass="badge badge-pill badge-info" ID="Labell" runat="server" Text="Your Status"></asp:Label>
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
             <center>
            <span class="badge badge-pill badge-info">Login Credentials</span></center>
             </div>
             
               </div>
                 </div>
        
                              <div class="row">
                          <div class="col-md-4">
                              <label>Member ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2"
                              runat="server" placeholde="Member ID" ></asp:TextBox>
</div>
                              </div>
                              <div class="col-md-4">
                                <label>Old Password</label>
                                  <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox10"
runat="server" placeholde="Password" TextMode="Password"></asp:TextBox>
</div>
                                  </div>
                                <div class="col-md-4">
                                <label>New Password</label>
                                  <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox11"
runat="server" placeholde="Password" TextMode="Password"></asp:TextBox>
</div>
                                  </div>

            
            <div class="form-group">
                <center>
                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Update" />
            </center>
            </div>
        
                                  </div>
                                  </div>
                        </div>
                 
            
            <a href="homepage.aspx" ><< Back To Home</a>
               </div>

            <div class="col-md-7">
                 <div class="card">
     <div class="card-body">

         <div class="row">
             <div class="col">
                 <center>
                     <img width="100px" src="imgs/books1.jpg" />
                  </center>
             </div>
         </div>

          <div class="row">
                      <div class="col">
                           <center>
                              <h4>Your Issued Book</h4>
                                 <asp:Label Class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Book Info"></asp:Label>
                           </center>
                       </div>
                </div>




            </div>
        
        
        </div>
                </div>
            
            <div class="row">
    <div class="col">
                <hr>
            </div>
                </div>

            <div class="row">
    <div class="col">
                 <asp:GridView class="table table-striped table-bordered" ID="Gridview1" runat="server"></asp:GridView>
            </div>
                </div>
              </div>
            </div>
</asp:Content>
