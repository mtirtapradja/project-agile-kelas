<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_agile_kelas.View.Home.Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="HomeStyle.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>HOME</h2>
    <br />
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="gvCatatan" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="TransactionType.transactionTypeName" HeaderText="Transaction Type" SortExpression="TransactionType.transactionTypeName" />
                    <asp:BoundField DataField="price" HeaderText="Money" SortExpression="price" />
                    <asp:BoundField DataField="itemDescription" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="created_at" HeaderText="Created At" SortExpression="created_at" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>


    <div>
        <asp:GridView ID="gvCatatan" runat="server"></asp:GridView>
    </div>

    <div>
        <asp:Label ID="lblName" runat="server" />
    </div>

    <div>
        <nav class="navbar navbar-light bg-light">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">&nbsp&nbsp&nbsp&nbspDescription&nbsp&nbsp&nbsp&nbsp</span>
                </div>
                <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" />
            </div>
        </nav>
    </div>
    <div>
         <asp:Label Text="User ID" runat="server" />
        <asp:TextBox ID="txtUserId" TextMode="Number" runat="server" />
    </div>--%>
    <%--<div>
         <asp:Label Text="User Type ID" runat="server" />
        <asp:TextBox ID="txtTypeId" TextMode="Number" runat="server" />
    </div>--%>
    <div>
        <asp:Label Text="Description" runat="server" />
        <asp:TextBox ID="txtDescription" runat="server" />
    </div>
    <div>
        <asp:Label Text="Price" runat="server" />
        <asp:TextBox ID="txtPrice" TextMode="Number" runat="server" />
        <nav class="navbar navbar-light bg-light">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAmount&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                </div>
                <asp:TextBox ID="txtPrice" CssClass="form-control" TextMode="Number" runat="server" />
            </div>
        </nav>
    </div>

    <div>
        <nav class="navbar navbar-light bg-light">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">Transaction Type</span>
                </div>
                <asp:DropDownList ID="ddlTransactionType" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </nav>
    </div>

    <div>
        <asp:Label ID="lblError" Text="" runat="server" />
        <asp:Button ID="btnInsert" CssClass="btn btn-primary mb-3" Text="Insert" OnClick="btnInsert_Click" runat="server" />
        <asp:Button ID="btnUpdate" CssClass="btn btn-warning mb-3" Text="Update" OnClick="btnUpdate_Click" runat="server" />
        <asp:Button ID="btnDelete" CssClass="btn btn-danger mb-3" Text="Delete" OnClick="btnDelete_Click" runat="server" />
    </div>

</asp:Content>
