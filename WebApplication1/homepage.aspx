<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #E6F2FF;
        }
        .first-section {
            position: relative;
            height: 32vh;
            overflow: hidden;
        }

        .first-section img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .text-center {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="first-section">
        <img src="icons/boks.jpg" class="img-fluid" />
    </div>

    <section>
       <div class="container">
           <div class="row">
               <div class="col-12 text-center">
                   <p><b>How Can We Help You?</b></p>
               </div>
           </div>
           <div class="row">
               <div class="col-md-4">
                   <center>
                   <img width="150px" src="icons/add-user.png" />
                   <h4>Sign Up</h4>
                       </center>
               </div>
                <div class="col-md-4">
                   <center>
                   <img width="150px" src="icons/digital-inventory.png" />
                   <h4>Book Inventory</h4>
                       </center>
               </div>
               <div class="col-md-4">
                   <center>
                   <img width="150px" src="icons/book.png" />
                   <h4> Search For Book</h4>
                       </center>
               </div>
                <div class="col-md-4">
                   <center>
                   <img width="150px" src="icons/warning.png" />
                   <h4> Defaulter List</h4>
                       </center>
               </div>
               <div class="col-md-4">
                   <center>
                   <img width="150px" src="icons/area.png" />
                   <h4> Vist Us</h4>
                       </center>
               </div>
           </div>
       </div>
    </section>
</asp:Content>
