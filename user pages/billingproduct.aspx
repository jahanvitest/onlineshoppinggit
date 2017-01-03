<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="billingproduct.aspx.cs" Inherits="user_pages_billingproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <table style="height:500px; width:500px; background-color:#b8f8f3; border:dotted 1px gray; " align="center">
        <tr >
            <td colspan="2" style="color:#808080; font-family:Calibri; text-align:center">
          <h1>  Shipping Address</h1>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                Name :
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td style="text-align: center;">
                Contact No. :
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="text-align: center;">
               Email-id :
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td style="text-align: center;">
                Address :
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                Pin code :
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                City :
            </td>
     <td style="text-align: center">
         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
     </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click">Place your order</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                Estimated delivery within the two days...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbotp" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
     
</asp:Content>

