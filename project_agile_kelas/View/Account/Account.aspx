<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="project_agile_kelas.View.Account.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblFullName" Text="Full Name" runat="server" />
        <asp:TextBox ID="txtFullName" runat="server" />
    </div>
    <div>
        <asp:Label ID="lblPassword" Text="Password" runat="server" />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
    </div>
    <div>
        <asp:Label ID="lblConfirm" Text="Confirm Password" runat="server" />
        <asp:TextBox ID="txtConfirm" TextMode="Password" runat="server" />
    </div>
    <div>
        <asp:Label ID="lblEmail" Text="Email" runat="server" />
        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" />
    </div>
    <div>
        <asp:Label ID="lblError" ForeColor="Red" Text="" runat="server" />
    </div>
    <div>
        <asp:Button ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" runat="server" />
    </div>
</asp:Content>
