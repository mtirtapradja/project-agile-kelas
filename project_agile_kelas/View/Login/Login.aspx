<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_agile_kelas.View.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <div>
        <h2>LOGIN PAGE</h2>
        <div class="form-floating mb-3">
          <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="name@example.com" Width="500px"></asp:TextBox>
          <%--<input type="email" class="form-control" ID="txtEmail" placeholder="name@example.com">--%>
          <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
          <asp:TextBox CssClass="form-control" ID="txtPassword" TextMode="Password" runat="server" placeholder="Password" Width="500px"></asp:TextBox>
          <%--<input type="password" class="form-control" ID="txtPassword" placeholder="Password">--%>
          <label for="floatingPassword">Password</label>
        </div>
        <%--<div class="email-input">
            <asp:Label CssClass="email-input-label"  runat="server">Username :
            </asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>

        <div class="password-input">
            <asp:Label CssClass="password-input-label" runat="server">Password :
            </asp:Label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" MaxLength="50"></asp:TextBox>
        </div>--%>

      <%--  <div class="form-check">
            <asp:CheckBox CssClass="form-check-input" ID="cbRemember" Visible="true" Height="0px" Width="0px" runat="server" />
            <label class="form-check-label" for="flexCheckDefault">
            Remember me!
            </label>
        </div>--%>

        <div class="">
           <asp:CheckBox CssClass="" ID="cbRemember" Text="" runat="server" />
          <%--<input class="form-check-input" type="checkbox" value="" id="cbRemember">--%>
          <label class="form-check-label" for="flexCheckDefault">
            Remember Me
          </label>
        </div>

        <asp:Label ID="lblError" Text="" runat="server" />

        <div class="login-btn">
            <asp:Button CssClass="btn btn-primary" ID="btnLogin" runat="server" Text="Login" Width="150px" OnClick="btnLogin_Click" />
        </div>
    </div>
</asp:Content>
