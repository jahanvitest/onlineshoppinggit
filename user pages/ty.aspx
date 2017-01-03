<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="ty.aspx.cs" Inherits="user_pages_ty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <center>
  
        <h2>Thank you ....</h2><br />
        Your order has been placed.

        Item will be delivered to the
        <h3><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3><br />
        at your registered address.
        <br /><br />
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary" OnClick="LinkButton2_Click">Trace Your order</asp:LinkButton>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click">Continue Shopping</asp:LinkButton>

          </center>
</asp:Content>

