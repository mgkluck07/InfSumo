﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Motherboards.aspx.cs" Inherits="Motherboards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenerdorVerde" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenedorRojo" Runat="Server">
    <asp:GridView CssClass="Tablas" ID="grdProductos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Código" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="98%" Height="98%" OnRowCommand="grdProductos_RowCommand">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Codigo"/>
        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
        <asp:BoundField DataField="PrecioUnitario" HeaderText="PrecioUnitario" SortExpression="PrecioUnitario" />
        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
        <asp:ButtonField Text="Comprar" CommandName="Select">

        <ControlStyle CssClass="MenuButtons" />
        </asp:ButtonField>
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#88b5d1" Font-Bold="True" Font-Size="X-Large" CssClass="Tablas" ForeColor="White"/>
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <%--<RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />--%>
    <%--<SelectedRowStyle BackColor="#88b5d1" Font-Bold="True" ForeColor="White" />--%>
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#88b5d1" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InfSumoConnectionString %>" SelectCommand="SELECT [CodArt_A] as Código, [Descripcion], [PrecioUnitario], [Stock], [Categoria] FROM [Articulos] WHERE [Articulos].[Categoria]='Motherboards'"></asp:SqlDataSource>
</asp:Content>

