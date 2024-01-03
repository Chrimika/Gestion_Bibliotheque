<%@ Page Title="AcceuilBiblio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcceuilBiblio.aspx.cs" Inherits="Gestion_Biblio_1._0.AcceuilBiblio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div>
            <div class="main2 p-5 justify-content-center align-items-center">
                <h1 class="d-flex justify-content-center bg-white">Bienvenue  <asp:TextBox runat="server" ID="name" CssClass="w-25 text-center h1 form-control border-white" Text=""/></h1>

                <div class="d-flex justify-content-center align-items-center h-75">

                    <a href="#" class="text-decoration-none div1 p-3 w-50 text-center h-50">
                        <div class=" ">
                            <img src="icons/person.png" alt="Alternate Text" />
                            <h1 class="text-black">Adherants</h1>
                        </div>
                    </a>
                    <a href="#" class="text-decoration-none div2 mx-2 p-3 w-50 text-center h-50">
                        <div class=" ">
                            <img src="icons/school.png" alt="Alternate Text" />
                            <h1 class="text-center text-black">Emprunts</h1>
                        </div>
                    </a>
                    <a href="#" class="text-decoration-none div3 p-3 w-50 text-center h-50">
                        <div class=" ">
                            <img src="icons/book.png" alt="Alternate Text" />
                            <h1 class="text-black">Livres</h1>
                        </div>
                    </a>
                </div>
                <div class="d-flex justify-content-center align-items-center">
                    <a href="#" class="text-decoration-none div4 p-3 w-50 text-center h-100">
                        <img src="icons/description.png" alt="Alternate Text" />
                        <h1 class="text-center text-black">Statistiques</h1>
                    </a>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
