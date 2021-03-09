<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>

        <table cellpadding="3" cellspacing="3" class="nav-justified">
            <tr>
                <td><span>Submission Date: </span></td>
                <td>
                    <asp:Label ID="lbl_Sdate" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Employee Name: </span></td>
                <td>
                    <asp:Label ID="lbl_empName" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Title: </span></td>
                <td>
                    <asp:Label ID="lbl_title" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Department: </span></td>
                <td>
                    <asp:Label ID="lbl_dept" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Vacation Dates From: </span></td>
                <td>
                    <asp:Label ID="lbl_dateFrom" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Vacation Dates To:</span></td>
                <td>
                    <asp:Label ID="lbl_dateTo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Returning: </span></td>
                <td>
                    <asp:Label ID="lbl_return" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Total Number of Days Requested: </span></td>
                <td>
                    <asp:Label ID="lbl_days" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Notes: &nbsp;</span></td>
                <td>
                    <asp:Label ID="lbl_notes" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_back" runat="server" CssClass="btn btn-primary" OnClick="btn_back_Click" Text="Back" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
