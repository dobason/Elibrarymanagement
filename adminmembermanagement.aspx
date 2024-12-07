<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="Elibrarymanagement.adminmembermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {

        //$(document).ready(function () {
        //    $('.table').DataTable();
        //}); 

        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        //$('.table1').DataTable();
    });
    </script>   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Member ID"></asp:TextBox>

                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                            runat="server" placeholder="full Name" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Account status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7"
                                            runat="server" placeholder="Status" ></asp:TextBox>


                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="DOB" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Contact No" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Email ID" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9"
                                        runat="server" placeholder="State"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10"
                                        runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Password"
                                        runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger"
                                    runat="server" Text="Delete user permernantly" OnClick="Button4_Click" />
                            </div>
                            <div class="col-8 mx-auto">
                                <asp:Button ID="ButtonAddMember" class="btn btn-lg btn-block btn-success"
                                    runat="server" Text="Add Member" OnClick="ButtonAddMember_Click" />
                            </div>
                        </div>


                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>

            <div class="col-md-7" style="flex: 1;">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString5 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered"
                                    ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="member_id">
                                    <Columns>
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name"></asp:BoundField>
             
                                        <asp:BoundField DataField="contact_no" HeaderText="Phone number" SortExpression="contact_no"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                     
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
