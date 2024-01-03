<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gestion_Biblio_1._0._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="main1 p-5 justify-content-center align-items-center">
            <div class="d-flex flex-row h-100">
                <div class="left1 justify-content-center align-items-center p-3 w-75 h-100">
                    <h1 class="heading mb-5">Bienvenue Dans Votre Bibliotheque</h1>

                     <div>
                         <asp:TextBox runat="server" ID="msg" CssClass="alert alert-warning mx-auto w-100" Text="" />
                     </div>

                    <div class="my-5">
                        <label>username</label>
                        <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="username" Required/>
                    </div>
                    

                    <div class="d-flex flex-column">
                        <label>password</label>
                        <div class="d-flex"> 
                         <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" TextMode="Password" ID="password" Required/>
                         <asp:Button runat="server" Text="S'inscrire" CssClass="bouttonCon p-2 rounded-2 mx-3 text-decoration-none" OnClick="connect_Click"></asp:Button>
                        </div>
                        <p class="my-3">pas de compte? <a href="inscription.aspx" class="text-danger text-decoration-none">S'inscrire ...</a></p>
                    </div>
                    
                    
                </div>
                <div class="right1 d-flex justify-content-center align-items-center w-50 h-100">
                    <img src="icons/icon1.png" alt="Alternate Text" width="50%" />
                </div>
            </div>
        </div>
    </main>

</asp:Content>
