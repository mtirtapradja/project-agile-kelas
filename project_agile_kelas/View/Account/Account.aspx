<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="project_agile_kelas.View.Account.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div>
            <asp:Label CssClass="display-5" ID="lblName" runat="server" />
        </div>

        <br />

        <div class="form-floating">
            <asp:TextBox CssClass="form-control" ID="txtFullName" placeholder="Full Name" runat="server" Width="500px" />
            <label for="floatingInput">Full Name</label>
        </div>
        <br />
        <div class="form-floating">
            <asp:TextBox CssClass="form-control" ID="txtPassword" TextMode="Password" placeholder="Password" runat="server" Width="500px" />
            <label for="floatingPassword">Password</label>
        </div>
        <br />
        <div class="form-floating">
            <asp:TextBox CssClass="form-control" ID="txtConfirm" TextMode="Password" placeholder="Confirm Password" runat="server" Width="500px" />
            <label for="floatingPassword">Confirm Password</label>
        </div>
        <br />
        <div class="form-floating">
            <asp:TextBox CssClass="form-control" ID="txtEmail" TextMode="Email" placeholder="Email" runat="server" Width="500px" />
            <label for="floatingInput">Email</label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblError" ForeColor="Red" Text="" runat="server" />
        </div>
        <div>
            <asp:Button CssClass="btn btn-warning mb-3" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" runat="server" />
        </div>
    </div>
</asp:Content>
