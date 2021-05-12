<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_agile_kelas.View.Home.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>HOME</h2>
    <br />

    <asp:GridView ID="gvCatatan" runat="server"></asp:GridView>
    
    <asp:TextBox ID="txtId" runat="server" />
    <asp:TextBox runat="server" />
    <asp:TextBox runat="server" />
    <asp:TextBox runat="server" />
    <asp:TextBox runat="server" />

    <asp:Button ID="btnInsert" Text="Insert" runat="server" />
    <asp:Button ID="btnUpdate" Text="Update" runat="server" />
    <asp:Button ID="btnDelete" Text="Delete" runat="server" />
</asp:Content>
