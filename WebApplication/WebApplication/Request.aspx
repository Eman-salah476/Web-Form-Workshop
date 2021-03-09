<%@ Page Title="Vacation Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="WebApplication.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>

        <table class="nav-justified">
            <tr>
                <td><span>Submission Date: </span></td>
                <td>
                    <asp:TextBox ID="txt_submDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Employee Name: </span></td>
                <td>
                    <asp:TextBox ID="txt_empName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_empName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Title: </span></td>
                <td>
                    <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_title" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Department: </span></td>
                <td>
                    <asp:DropDownList ID="ddl_Department" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddl_Department" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Vacation Dates From: </span></td>
                <td>
                    <asp:TextBox ID="txt_dateFrom" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="txt_dateFrom_TextChanged" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_dateFrom" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lbl_dateFromstatus" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><span>Vacation Dates To:</span></td>
                <td>
                    <asp:TextBox ID="txt_dateTo" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="txt_dateTo_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_dateTo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lbl_dateTostatus" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><span>Returning: </span></td>
                <td>
                    <asp:TextBox ID="txt_return" runat="server" OnTextChanged="TextBox5_TextChanged" TextMode="Date" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_return" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lbl_returnStatus" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><span>Total Number of Days Requested: </span></td>
                <td>
                    <asp:TextBox ID="txt_noDays" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span>Notes: &nbsp;</span></td>
                <td>
                    <asp:TextBox ID="txt_notes" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_cancel" runat="server" CssClass="btn-primary" Text="Cancel" OnClick="btn_cancel_Click" CausesValidation="false" />
                </td>
                <td>
                    <asp:Button ID="btn_save" runat="server" CssClass="btn-success" Text="Save" OnClick="btn_save_Click" />
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
                    <asp:Label ID="lbl_status" runat="server" ForeColor="#009933"></asp:Label>
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
