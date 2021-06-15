<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_agile_kelas.View.Register.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <h2>Register</h2>

    <div class="form-floating mb-3">
        <asp:TextBox CssClass="form-control" ID="txtName" placeholder="Name" runat="server" Width="500px" />
        <label for="floatingInput">Name</label>
    </div>
    <br />
    <div class="form-floating mb-3">
        <asp:TextBox CssClass="form-control" ID="txtEmail" placeholder="Email" runat="server" Width="500px"  />
        <label for="floatingInput">Email</label>
    </div>
    <br />
    <div class="form-floating mb-3">
        <asp:TextBox CssClass="form-control" ID="txtPassword" placeholder="Password" TextMode="Password" runat="server" Width="500px"/>
        <label for="floatingPassword">Password</label>
    </div>
    <br />
     <div class="form-floating mb-3">
        <asp:TextBox CssClass="form-control" ID="txtConfirmPassword" placeholder="Confirm Password" TextMode="Password" runat="server" Width="500px"/>
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
