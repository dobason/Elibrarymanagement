<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Elibrarymanagement.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.jpg" />
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
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Province/City</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="An Giang" Value="An Giang" />
                                        <asp:ListItem Text="Bà Rịa - Vũng Tàu" Value="Bà Rịa - Vũng Tàu" />
                                        <asp:ListItem Text="Bắc Giang" Value="Bắc Giang" />
                                        <asp:ListItem Text="Bắc Kạn" Value="Bắc Kạn" />
                                        <asp:ListItem Text="Bạc Liêu" Value="Bạc Liêu" />
                                        <asp:ListItem Text="Bắc Ninh" Value="Bắc Ninh" />
                                        <asp:ListItem Text="Bến Tre" Value="Bến Tre" />
                                        <asp:ListItem Text="Bình Định" Value="Bình Định" />
                                        <asp:ListItem Text="Bình Dương" Value="Bình Dương" />
                                        <asp:ListItem Text="Bình Phước" Value="Bình Phước" />
                                        <asp:ListItem Text="Bình Thuận" Value="Bình Thuận" />
                                        <asp:ListItem Text="Cà Mau" Value="Cà Mau" />
                                        <asp:ListItem Text="Cần Thơ" Value="Cần Thơ" />
                                        <asp:ListItem Text="Cao Bằng" Value="Cao Bằng" />
                                        <asp:ListItem Text="Đà Nẵng" Value="Đà Nẵng" />
                                        <asp:ListItem Text="Đắk Lắk" Value="Đắk Lắk" />
                                        <asp:ListItem Text="Đắk Nông" Value="Đắk Nông" />
                                        <asp:ListItem Text="Điện Biên" Value="Điện Biên" />
                                        <asp:ListItem Text="Đồng Nai" Value="Đồng Nai" />
                                        <asp:ListItem Text="Đồng Tháp" Value="Đồng Tháp" />
                                        <asp:ListItem Text="Gia Lai" Value="Gia Lai" />
                                        <asp:ListItem Text="Hà Giang" Value="Hà Giang" />
                                        <asp:ListItem Text="Hà Nam" Value="Hà Nam" />
                                        <asp:ListItem Text="Hà Nội" Value="Hà Nội" />
                                        <asp:ListItem Text="Hà Tĩnh" Value="Hà Tĩnh" />
                                        <asp:ListItem Text="Hải Dương" Value="Hải Dương" />
                                        <asp:ListItem Text="Hải Phòng" Value="Hải Phòng" />
                                        <asp:ListItem Text="Hậu Giang" Value="Hậu Giang" />
                                        <asp:ListItem Text="Hòa Bình" Value="Hòa Bình" />
                                        <asp:ListItem Text="Hưng Yên" Value="Hưng Yên" />
                                        <asp:ListItem Text="Khánh Hòa" Value="Khánh Hòa" />
                                        <asp:ListItem Text="Kiên Giang" Value="Kiên Giang" />
                                        <asp:ListItem Text="Kon Tum" Value="Kon Tum" />
                                        <asp:ListItem Text="Lai Châu" Value="Lai Châu" />
                                        <asp:ListItem Text="Lâm Đồng" Value="Lâm Đồng" />
                                        <asp:ListItem Text="Lạng Sơn" Value="Lạng Sơn" />
                                        <asp:ListItem Text="Lào Cai" Value="Lào Cai" />
                                        <asp:ListItem Text="Long An" Value="Long An" />
                                        <asp:ListItem Text="Nam Định" Value="Nam Định" />
                                        <asp:ListItem Text="Nghệ An" Value="Nghệ An" />
                                        <asp:ListItem Text="Ninh Bình" Value="Ninh Bình" />
                                        <asp:ListItem Text="Ninh Thuận" Value="Ninh Thuận" />
                                        <asp:ListItem Text="Phú Thọ" Value="Phú Thọ" />
                                        <asp:ListItem Text="Phú Yên" Value="Phú Yên" />
                                        <asp:ListItem Text="Quảng Bình" Value="Quảng Bình" />
                                        <asp:ListItem Text="Quảng Nam" Value="Quảng Nam" />
                                        <asp:ListItem Text="Quảng Ngãi" Value="Quảng Ngãi" />
                                        <asp:ListItem Text="Quảng Ninh" Value="Quảng Ninh" />
                                        <asp:ListItem Text="Quảng Trị" Value="Quảng Trị" />
                                        <asp:ListItem Text="Sóc Trăng" Value="Sóc Trăng" />
                                        <asp:ListItem Text="Sơn La" Value="Sơn La" />
                                        <asp:ListItem Text="Tây Ninh" Value="Tây Ninh" />
                                        <asp:ListItem Text="Thái Bình" Value="Thái Bình" />
                                        <asp:ListItem Text="Thái Nguyên" Value="Thái Nguyên" />
                                        <asp:ListItem Text="Thanh Hóa" Value="Thanh Hóa" />
                                        <asp:ListItem Text="Thừa Thiên Huế" Value="Thừa Thiên Huế" />
                                        <asp:ListItem Text="Tiền Giang" Value="Tiền Giang" />
                                        <asp:ListItem Text="TP Hồ Chí Minh" Value="TP Hồ Chí Minh" />
                                        <asp:ListItem Text="Trà Vinh" Value="Trà Vinh" />
                                        <asp:ListItem Text="Tuyên Quang" Value="Tuyên Quang" />
                                        <asp:ListItem Text="Vĩnh Long" Value="Vĩnh Long" />
                                        <asp:ListItem Text="Vĩnh Phúc" Value="Vĩnh Phúc" />
                                        <asp:ListItem Text="Yên Bái" Value="Yên Bái" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>District</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <div style="width: 50%; margin: auto;">
                                        <span class="badge badge-pill badge-info">Login Credentials</span>
                                    </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a href="homepage.aspx"><< Back To Home</a>
</asp:Content>
