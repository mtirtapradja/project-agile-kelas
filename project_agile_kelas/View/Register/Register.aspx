<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_agile_kelas.View.Register.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <h2>Register</h2>

    <div class="form-floating">
        <%--<asp:Label Text="Name" runat="server" />--%>
        <asp:TextBox CssClass="form-control" runat="server" Width="500px" ID="txtName"/>
        <label for="floatingPassword">Name</label>
    </div>
    <br />
    <div class="form-floating">
        <%--<asp:Label Text="Email" runat="server" />--%>
        <asp:TextBox CssClass="form-control" runat="server" Width="500px" ID="txtEmail"/>
        <label for="floatingPassword">Email</label>
    </div>
    <br />
    <div class="form-floating">
        <asp:TextBox CssClass="form-control" runat="server" ID="txtPassword" Width="500px" TextMode="Password"/>
        <label for="floatingPassword">Password</label>
    </div>
    <br />
     <div class="form-floating">
        <%--<asp:Label Text="Confirm Password" runat="server" />--%>
        <asp:TextBox CssClass="form-control" runat="server" ID="txtConfirmPassword" Width="500px" TextMode="Password"/>
         <label for="floatingPassword">Confirm Password</label>
    </div>
    <br />
    <div>
        <asp:Label Text="" ID="lblError" ForeColor="Red" runat="server" />
    </div>
    <div class="login-btn">
        <asp:Button CssClass="btn btn-primary" Text="Register" runat="server" ID="btnRegister" Width="150px" OnClick="btnRegister_Click"/>
    </div>
</asp:Content>
