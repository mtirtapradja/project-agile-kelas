<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_agile_kelas.View.Home.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>HOME</h2>
    <br />

    <asp:GridView ID="gvCatatan" runat="server"></asp:GridView>
    
    <div>
        <asp:Label Text="Transaction ID" runat="server" />
        <asp:TextBox ID="txtId" TextMode="Number" runat="server" />
    </div>
    <div>
         <asp:Label Text="User ID" runat="server" />
        <asp:TextBox ID="txtUserId" TextMode="Number" runat="server" />
    </div>
    <div>
         <asp:Label Text="User Type ID" runat="server" />
        <asp:TextBox ID="txtTypeId" TextMode="Number" runat="server" />
    </div>
    <div>
         <asp:Label Text="Description" runat="server" />
        <asp:TextBox ID="txtDescription" runat="server" />
    </div>
    <div>
         <asp:Label Text="Price" runat="server" />
         <asp:TextBox ID="txtPrice" TextMode="Number" runat="server" />
    </div>

    <div>
        <asp:Label ID="lblError" Text="" runat="server" />
        <asp:Button ID="btnInsert" Text="Insert" runat="server" />
        <asp:Button ID="btnUpdate" Text="Update" runat="server" />
        <asp:Button ID="btnDelete" Text="Delete" runat="server" />
    </div>
    
    
    
   

    asp

    
</asp:Content>
