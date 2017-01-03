<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="enterotp.aspx.cs" Inherits="user_pages_enterotp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table align="center" style="background-color:#f1ecec; height:250px; width:500px;" >
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter OTP :</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtotp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                &nbsp;</td>
            <td>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbotp" runat="server" CssClass="btnlogin" OnClick="lbotp_Click" >Submit</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

