<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="Elibrarymanagement.adminmembermanagement" %>
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
                           <h4>Memeber Details</h4>
                        </center>
                    </div>
             </div>

              <div class="row">
              <div class="col">
                  <center>
                      <img width="100px" src="imgs/generaluser.jpg" />
                   </center>
              </div>
          </div>

  <div class="row">
             <div class="col-md-3">
                     <label>Member ID</label>
               <div class="form-group">
                   <div class="input-group">
               <asp:TextBox CssClass="form-control" ID="TextBox4"
           runat="server" placeholder="Member ID" ></asp:TextBox>

                 <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
            </div> 
          </div>   
          </div>
           <div class="col-md-4">
                <label>Full Name</label>
                  <div class="form-group">
                  <div class="input-group">
                  <asp:TextBox CssClass="form-control" ID="TextBox3"
                      runat="server" placeholder="full Name" ReadOnly="True" ></asp:TextBox>
                  </div>
                </div>
            </div>
             <div class="col-md-5">
                  <label>Account status</label>
                    <div class="form-group">
                    <div class="input-group">
                     <asp:TextBox CssClass="form-control" ID="TextBox7"
                         runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox> 
                    
                        
                     <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                     <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="fa-light fa-xmark"></i></asp:LinkButton>
                     <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fa-regular fa-bolt"></i></asp:LinkButton>
                    </div>
              </div>
          </div>
  </div>

  <div class="row">
             <div class="col-md-3">
                     <label>DOB</label>
               <div class="form-group">
               <asp:TextBox CssClass="form-control" ID="TextBox8"
           runat="server" placeholde="Member Name" ReadOnly="True"></asp:TextBox>
            </div> 
          </div>    
            <div class="col-md-4">
                       <label>Contact No</label>
                 <div class="form-group">
                 <asp:TextBox CssClass="form-control" ID="TextBox10"
             runat="server" placeholde="Contact No" ReadOnly="True"></asp:TextBox>
              </div> 
            </div>    
         <div class="col-md-5">
         <label>Email ID</label>
           <div class="form-group">
           <asp:TextBox CssClass="form-control" ID="TextBox9"
         runat="server" placeholde="Email ID" ReadOnly="True"></asp:TextBox>
         </div> 
        </div> 
   </div>

  <div class="row">
             <div class="col-md-4">
                     <label>State</label>
               <div class="form-group">
               <asp:TextBox CssClass="form-control" ID="TextBox1"
           runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
            </div> 
          </div>    
            <div class="col-md-4">
                       <label>City</label>
                 <div class="form-group">
                 <asp:TextBox CssClass="form-control" ID="TextBox2"
             runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
              </div> 
            </div>    
         <div class="col-md-4">
         <label>Pin code</label>
           <div class="form-group">
           <asp:TextBox CssClass="form-control" ID="TextBox11"
         runat="server" placeholder="Pin code" ReadOnly="True"></asp:TextBox>
         </div> 
        </div> 
   </div>

  <div class="row">
             <div class="col-md-6">
                     <label>Start Date</label>
               <div class="form-group">
               <asp:TextBox CssClass="form-control" ID="TextBox5"
                runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
            </div> 
          </div>    

            <div class="col-md-6">
           <label>End Date</label>
                 <div class="form-group">
                 <asp:TextBox CssClass="form-control" ID="TextBox6"
                  runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
              </div> 
            </div>    
      </div>

  <div class="row">
            <div class="col-12">
           <label>Full Postal Address</label>
                 <div class="form-group">
                 <asp:TextBox CssClass="form-control" ID="TextBox13"
                  runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
              </div> 
            </div>    
      </div>

  <div class="row">
             <div class="col-8 mx-auto">
               <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger"
          runat="server" Text="Delete user permernantly" />
              </div>
       </div>


      </div>
    </div> 
              <a href="homepage.aspx" ><< Back To Home</a>
  </div>
           <div class="col-md-7" style="flex: 1;">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>
                                </center>
                            </div>
                        </div>

           

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered"
                            ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>   
</div>

</div>
    

          </div>
        </div>
     

</asp:Content>
