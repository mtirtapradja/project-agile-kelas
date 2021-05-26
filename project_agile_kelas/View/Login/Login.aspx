<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_agile_kelas.View.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>LOGIN PAGE</h2>
    <div class="email-input">
        <asp:Label CssClass="email-input-label" runat="server">Email :
        </asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </div>

    <div class="password-input">
        <asp:Label CssClass="password-input-label" runat="server">Password :
        </asp:Label>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" MaxLength="50"></asp:TextBox>
    </div>

    <div>
        <asp:CheckBox ID="cbRemember" Text="Remember me" runat="server" />
    </div>

    <asp:Label ID="lblError" Text="" runat="server" />

    <div class="login-btn">
        <asp:Button CssClass="btn" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
</asp:Content>
