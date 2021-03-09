<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="WebApplication.Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>


        <asp:GridView ID="gv_vacations" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" CssClass="text-center table table-responsive " DataKeyNames="ID" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gv_vacations_SelectedIndexChanged1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="text-center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        <br />
        <div>

            <asp:Label ID="lbl_status" runat="server" ForeColor="#CC0000"></asp:Label>

            <asp:Button ID="btn_back" runat="server" CssClass="btn btn-primary" OnClick="btn_back_Click" Text="Back" />

        </div>

    </div>
</asp:Content>
