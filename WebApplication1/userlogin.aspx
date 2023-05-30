<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #E6F2FF;
        }
        </style>
   
    <script>
        function togglePasswordVisibility() {
            var passwordInput = document.getElementById('<%= TextBox2.ClientID %>');
            var passwordToggle = document.getElementById('password-toggle');

            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passwordToggle.classList.remove('fa-eye');
                passwordToggle.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                passwordToggle.classList.remove('fa-eye-slash');
                passwordToggle.classList.add('fa-eye');
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div  class ="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="icons/user.png"/>
                                </center>

                            </div>
                            
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Member LogIn </h3>
                                </center>

                            </div>
                            
                        </div>
                         <div class="row">
                            <div class="col">
                           
                               </hr>
                            </div>
                        </div>  
                         <div class="row">
                            <div class="col">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>

                                   </div>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     <i id="password-toggle" class="fas fa-eye show-password-toggle" onclick="togglePasswordVisibility()"></i>
                                   </div>
                                <div class="form-group">
                                   <asp:Button class="btn btn-primary btn-block btn-lg custom-button" ID="Button1" runat="server" Text="LogIn" />
                                     
                                   </div>
                                <div class="form-group">
                                    <a href="signUp.aspx" class="btn btn-primary btn-block btn-lg custom-button">Sign Up</a>
                                    
                                   </div>
                            </div>
                            
                        </div>
                        

                    </div>

                </div>
                
                <a href="homepage.aspx"><< Home Page </a><br><br>
            </div>
        </div>

    </div>
</asp:Content>
