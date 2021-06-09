<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_agile_kelas.View.Home.Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>HOME</h2>
    <br />
    <asp:ScriptManager runat="server" ></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="gvCatatan"  runat="server" AutoGenerateColumns="False">
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
        <asp:Label ID="lblName" runat="server" />
    </div>

    <%--<div>
        <asp:Label Text="Transaction ID" runat="server" />
        <asp:TextBox ID="txtId" TextMode="Number" runat="server" />
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
    </div>

    <div>
        <asp:Label Text="Transaction Type" runat="server" />
        <asp:DropDownList ID="ddlTransactionType" runat="server"></asp:DropDownList>
    </div>

    <div>
        <asp:Label ID="lblError" Text="" runat="server" />
        <asp:Button ID="btnInsert" Text="Insert" OnClick="btnInsert_Click" runat="server" />
        <asp:Button ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" runat="server" />
        <asp:Button ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" runat="server" />
    </div>

</asp:Content>
