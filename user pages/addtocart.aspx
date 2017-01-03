<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="user_pages_addtocart" %>
<%@ MasterType VirtualPath="~/user pages/user.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.Grid {background-color: #fff; margin: 25px 200px 25px 400px;  border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;}
.Grid td {
      padding: 2px; 
      border: solid 1px #c1c1c1; }
.Grid th  {
      padding : 4px 2px; 
      color: #fff; 
      background: #363670 url(Images/grid-header.png) repeat-x top; 
      border-left: solid 1px #525252; 
      font-size: 0.9em; }
.Grid .alt {
      background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }
.Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }
.Grid .pgr table { margin: 3px 0; }
.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
.Grid .pgr a { color: Gray; text-decoration: none; }
.Grid .pgr a:hover { color: #000; text-decoration: none; }
</style> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <asp:GridView ID="gvcartdetails" runat="server" AutoGenerateColumns="false" Width="600px"
                      AllowPaging="true" PageSize="8" DataKeyNames="cart_id" CellPadding="4" CellSpacing="4"
                      CssClass="Grid"                      
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" OnRowCommand="gvcartdetails_RowCommand" >

                <Columns>
                     <asp:TemplateField HeaderText="Product_Id">
                        <ItemTemplate>
                            <asp:Label ID="lbproduct_id" runat="server" Text='<%# Bind("product_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Product_name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Product_image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("pro_image") %>' Height="100px" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Product_price">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("pro_price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Quntity">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("total") %>'></asp:Label>
                        </ItemTemplate>
                               
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Purchase date">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                               
                    </asp:TemplateField>
                              <asp:TemplateField HeaderText="Remove from cart">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="remove" CommandArgument='<%# Bind("cart_id") %>' CssClass="btnlogin">Remove</asp:LinkButton>
                        </ItemTemplate>
                               
                    </asp:TemplateField>
                 
              
                              <asp:TemplateField HeaderText="Buy Now">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server"  CommandName="buy" CssClass="btnlogin">Buy Now</asp:LinkButton>
                        </ItemTemplate>
                               
                    </asp:TemplateField>

                 
                </Columns>
                <EmptyDataTemplate>
                    Oops!...No item in your cart
                    <asp:Image  ID="img" runat="server" ImageUrl="~/img/download (9).jpg" Height="250" Width="250"/>
                </EmptyDataTemplate>
            </asp:GridView>      
</asp:Content>

