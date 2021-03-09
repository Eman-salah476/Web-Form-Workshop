<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
        <asp:Button ID="btn_vacationReq" runat="server" CssClass="btn-primary" OnClick="btn_vacationReq_Click" Text="Vacation Request" />
        <asp:Button ID="btn_display" runat="server" CssClass="btn-primary" Text="Display Vacations" OnClick="btn_display_Click" />
       
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_status" runat="server" ForeColor="#009900"></asp:Label>
       
    </div>

</asp:Content>
