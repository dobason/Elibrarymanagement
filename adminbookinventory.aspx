<%@ Page Title="" Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="Elibrarymanagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e)
                {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="150px" width="40%" src="book_inventory/books1.jpg" />
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
                                <asp:FileUpload onchange="readURL(this)" class="form-control" ID="FileUpload1" runat="server"></asp:FileUpload>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Book ID"></asp:TextBox>

                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                            runat="server" placeholder="Book Name" ReadOnly="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="VietNamese" Value="VietNamese" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="A2" Value="a2" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Textbooks" Value="Textbooks" />
                                        <asp:ListItem Text="Children's books" Value="Children's books" />
                                        <asp:ListItem Text="Psychology " Value="Psychology " />
                                        <asp:ListItem Text="Religious " Value="Religious " />
                                        <asp:ListItem Text="Cultural" Value="Cultural" />
                                        <asp:ListItem Text="History " Value="History " />
                                        <asp:ListItem Text="Science fiction" Value="Science fiction" />
                                        <asp:ListItem Text="Biographies" Value="Biographies" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Cookbooks" Value="Cookbooks" />
                                        <asp:ListItem Text="Science " Value="Science " />
                                        <asp:ListItem Text="Inspirational " Value="Inspirational " />
                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9"
                                        runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost (per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10"
                                        runat="server" placeholder="Book Cost(per unit)" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11"
                                        runat="server" placeholder="Pages"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Actual Stock"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="Current Stock" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7"
                                        runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-12">
                                <label>Book Descriptions</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Book Descriptions" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success"
                                    runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-warning"
                                    runat="server" Text="Update" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger"
                                    runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Book Inventory List</h4>
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString5 %>"
                                SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="true" SortExpression="book_id" />


                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                      <div class="col-lg-10">
                                                            <div>
                                                                <strong><asp:Label ID="Label1" runat="server" Text='<%#Eval("book_name") %>'></asp:Label></strong>
                                                            </div>
                                                            <div>
                                                                <span><strong>Author:</strong> <asp:Label ID="Label2" runat="server" Text='<%#Eval("author_name") %>'></asp:Label></span>
                                                                <span>| <strong>Genre: </strong><asp:Label ID="Label3" runat="server" Text='<%#Eval("genre") %>'></asp:Label></span>
                                                                <span>| <strong>Language: </strong><asp:Label ID="Label4" runat="server" Text='<%#Eval("language") %>'></asp:Label></span>
                                                            </div>
                                                            <div>
                                                                <span><strong>Publisher:</strong> <asp:Label ID="Label5" runat="server" Text='<%#Eval("publisher_name") %>'></asp:Label></span>
                                                                <span>|<strong> Publish Date:</strong> <asp:Label ID="Label6" runat="server" Text='<%#Eval("publish_date") %>'></asp:Label></span>
                                                                <span>|<strong> Pages:</strong> <asp:Label ID="Label7" runat="server" Text='<%#Eval("no_of_pages") %>'></asp:Label></span>
                                                                <span>|<strong> Edition:</strong> <asp:Label ID="Label8" runat="server" Text='<%#Eval("edition") %>'></asp:Label></span>
                                                            </div>
                                                            <div>
                                                                <span><strong>Cost:</strong> <asp:Label ID="Label9" runat="server" Text='<%#Eval("book_cost") %>'></asp:Label></span>
                                                                <span>|<strong> Actual Stock:</strong> <asp:Label ID="Label10" runat="server" Text='<%#Eval("actual_stock") %>'></asp:Label></span>
                                                                <span>|<strong> Available Stock:</strong> <asp:Label ID="Label11" runat="server" Text='<%#Eval("current_stock") %>'></asp:Label></span>
                                                            </div>
                                                            <div>
                                                                <strong>Description:</strong>
                                                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("book_description") %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <asp:Image CssClass="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
