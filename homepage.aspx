<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Elibrarymanagement.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder" runat="server">
    <section >
        <img src="imgs/home-bg.jpg" class="img-fluid" width="100%"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Feature</h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/digital-inventory.jpg" width="150px" />
                        <h4>Digital Book Inventory</h4>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="imgs/search-online.jpg" width="150px" />
                        <h4>Search Book</h4>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="imgs/defaulters-list.jpg" width="150px" />
                        <h4>Defaulter List</h4>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section>
    <img src="imgs/in-homepage-banner.jpg" class="img-fluid" width="100%"/>
</section>

     <section>
     <div class="container">
         <div class="row">
             <div class="col-12">
                 <center>
                     <h2>Our Process</h2>
                 </center>
             </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                 <center>
                     <img src="imgs/sign-up.jpg" width="150px" />
                     <h4>Sign Up</h4>
                 </center>
             </div>
             <div class="col-md-4">
                 <center>
                     <img src="imgs/search-online.jpg" width="150px" />
                     <h4>Search Book</h4> 
                 </center>
             </div>
             <div class="col-md-4">
                 <center>
                     <img src="imgs/library.jpg" width="150px" />
                     <h4>Visit Us</h4>
                </center>
             </div>
         </div>
     </div>
 </section>

</asp:Content>
