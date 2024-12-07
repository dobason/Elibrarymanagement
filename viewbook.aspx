<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbook.aspx.cs" Inherits="Elibrarymanagement.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
    <div class="container">
        <div class="text-center my-4">
            <h3>Book Inventory List</h3>
        </div>

        <div class="row">
            <div class="col-12">
                <asp:Panel CssClass="alert alert-success" ID="Panel1" runat="server" Visible="False">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
            </div>
        </div>

        <div class="row justify-content-center mt-3">
            <div class="col-lg-10">
                <div class="card">
                    <div class="card-body">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString5 %>" 
                            SelectCommand="SELECT * FROM [book_master_tbl]">
                        </asp:SqlDataSource>

                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" 
                            AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="true" SortExpression="book_id" />

                                <asp:TemplateField>
                                    <ItemTemplate>
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
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
