<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_agile_kelas.View.Register.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Register</h2>

    <div>
        <asp:Label Text="Name" runat="server" />
        <asp:TextBox runat="server" ID="txtName"/>
    </div>
    <div>
        <asp:Label Text="Email" runat="server" />
        <asp:TextBox runat="server" ID="txtEmail"/>
    </div>
    <div>
        <asp:Label Text="Password" runat="server" />
        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"/>
    </div>
     <div>
        <asp:Label Text="Confirm Password" runat="server" />
        <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password"/>
    </div>
    <div>
        <asp:Button Text="Register" runat="server" ID="btnRegister" OnClick="btnRegister_Click"/>
    </div>
    <div>
        <asp:Label Text="" ID="lblError" ForeColor="Red" runat="server" />
    </div>
</asp:Content>
