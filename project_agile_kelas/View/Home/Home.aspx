<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_agile_kelas.View.Home.Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="HomeStyle.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="HomeStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>HOME</h2>
        <br />
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="gvCatatan" CssClass="table table-striped" runat="server" OnSelectedIndexChanged="gvCatatan_SelectedIndexChanged" OnRowDeleting="gvCatatan_RowDeleting" AutoGenerateColumns="false" ShowFooter="true">
                        <Columns>
                            <asp:BoundField DataField="TransactionType.transactionTypeName" HeaderText="Transaction Type" SortExpression="TransactionType.transactionTypeName" />
                            <asp:BoundField DataField="price" HeaderText="Money" SortExpression="price" />
                            <asp:BoundField DataField="itemDescription" HeaderText="Description" SortExpression="description" />
                            <asp:BoundField DataField="created_at" HeaderText="Created At" SortExpression="created_at" />

                            <asp:CommandField ShowDeleteButton="true" ButtonType="Button" DeleteText="Delete" ItemStyle-CssClass="btn btn-danger mb-3" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div>
            <nav class="navbar navbar-light bg-light">
                <div class="input-group">
                    <div class="input-group-prepend col-2">
                        <span class="input-group-text" id="basic-addon1">&nbsp&nbspTotal Income&nbsp</span>
                    </div>
                    <div class="input-group-text bg-white col-10"><asp:Label ID="txtTotalIncome" runat="server" Text="Label"></asp:Label></div>
                </div>
            </nav>
        </div>

        <div>
            <nav class="navbar navbar-light bg-light">
                <div class="input-group">
                    <div class="input-group-prepend col-2">
                        <span class="input-group-text" id="basic-addon1">Total Spending</span>
                    </div>
                    <div class="input-group-text bg-white col-10"><asp:Label ID="txtTotalSpending" runat="server" Text="Label"></asp:Label></div>
                </div>
            </nav>
        </div>

        <div>
            <asp:Label CssClass="display-4" ID="lblName" runat="server" />
        </div>
        

        <br />
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
        <br />
        <div>
            <asp:Label ID="lblError" Text="" runat="server" />
            <asp:Button ID="btnInsert" CssClass="btn btn-primary mb-3" Text="Insert" OnClick="btnInsert_Click" runat="server" />
            <asp:Button ID="btnUpdate" CssClass="btn btn-warning mb-3" Text="Update" OnClick="btnUpdate_Click" runat="server" />
            <asp:Button ID="btnDelete" CssClass="btn btn-danger mb-3" Text="Delete"  OnClick="btnDelete_Click" runat="server" />
        </div>
    </div>


</asp:Content>
