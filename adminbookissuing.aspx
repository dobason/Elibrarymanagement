﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="Elibrarymanagement.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h4>Book Searching</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.jpg" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server"
                                            Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
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
                            <div class="col-6">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary"
                                    runat="server" Text="Search" OnClick="Button2_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success"
                                    runat="server" Text="Return" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx"><< Back To Home</a>
                </div>

            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Search book List</h4>
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
                            SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id"></asp:BoundField>
                                        <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name"></asp:BoundField>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id"></asp:BoundField>
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name"></asp:BoundField>
                                        <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date"></asp:BoundField>
                                        <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date"></asp:BoundField>
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

