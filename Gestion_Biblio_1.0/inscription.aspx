<%@ Page Title="inscription" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="Gestion_Biblio_1._0.inscription" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
       <div class="main1 p-5 justify-content-center align-items-center">
    <div class="d-flex flex-row h-100">
        <div class="left1 justify-content-center align-items-center p-3 w-50 h-100">
            <h1 class="heading mb-5">Inscription</h1>

            <div>
                <asp:TextBox runat="server" ID="msg" CssClass="alert alert-warning mx-auto w-100" Text="" />
            </div>
            

            <div class="p-3 d-flex">
                <div>
                    <label>username</label>
                    <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="username" Required/>
                </div>
                <div class="mx-2">
                    <label>Sexe</label>
                    <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="sexe" Required/>
                </div>
            </div>
            <div class="p-3 d-flex">
                <div>
                    <label>age</label>
                    <asp:TextBox runat="server" TextMode="Number" CssClass="w-100 bg-white form-control" ID="age" Required/>
                </div>
                <div class="mx-2">
                    <label>Tel</label>
                    <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="tel" Required/>
                </div>
            </div>

            <div class="p-3 d-flex">
                <div>
                    <label>password</label>
                    <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="password" TextMode="Password" Required/>
                </div>
                <div class="mx-2">
                    <label>Confirm password</label>
                    <asp:TextBox runat="server" CssClass="w-100 bg-white form-control" ID="conpass" TextMode="Password" Required/>
                </div>
            </div>

            <div class="p-3 d-flex flex-column">
                <asp:Button runat="server" Text="S'inscrire" CssClass="bouttonCon p-2 rounded-2 mx-3 text-decoration-none w-25 text-center mx-auto" ID="inscrit" OnClick="inscrit_Click"></asp:Button>
                
                <p class="my-3 w-100">deja un compte? <a href="Default.aspx" class="text-danger text-decoration-none">Connexion ...</a></p>
            </div>  
            </div>
            
            <div class="right1 d-flex justify-content-center align-items-center w-50 h-100">
                <img src="icons/icon1.png" alt="Alternate Text" width="50%" />
            </div>
        </div>
        
    </div>
</div>
    </main>
</asp:Content>
