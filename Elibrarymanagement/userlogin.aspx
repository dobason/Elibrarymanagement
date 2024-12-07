<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Elibrarymanagement.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-0-auto">
            
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
                                             <h3>Member Login</h3>
                                          </center>
                                      </div>
                               </div>

                           <div class="row">
                  <div class="col">
                      <hr />
                   </div>
            </div>

                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                runat="server" placeholde="Member ID" ></asp:TextBox>

                                </div>

                                  <label>Password</label>
                                    <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2"
  runat="server" placeholde="Password" TextMode="Password"></asp:TextBox>

  </div>

                                <div class="form-group">
                               <asp:Button class="btn btn-succes btn-block btn-lg" ID="Button1" runat="server" Text="Login" />

</div>
                                <div class="form-group">
                               <input class="btn btn-info btn-block btn-lg" ID="Button2" type="button" value="Sign Up" /> 
                                    
       </div>
</div>

                    </div>
                </div>

            </div>

                <a href="homepage.aspx" ><< Back To Home</a><br><br>
        </div>
    </div>
</div>

</asp:Content>