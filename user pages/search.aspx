<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="user_pages_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dbproduct" runat="server" BackColor="Gray" 
             CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="5" RepeatDirection="Horizontal"
            Width="1350px"  CaptionAlign="Top">
        <HeaderTemplate>
            <h1>Products</h1>
        </HeaderTemplate>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#ffffff" Font-Bold="True" Font-Size="Large" ForeColor="#3366ff"
                HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

        <ItemTemplate>
            <table>
                <div id="image">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("pro_image") %>' OnClick="ImageButton1_Click" />
     </td>
                </tr>
                    </div>
         <tr>
             <td>
         <asp:Label ID="Label1" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
           
             </td>
         </tr>
                <tr>
             <td>
              Product code: <asp:Label ID="lbprocode" runat="server" Text='<%# Bind("pro_code") %>'></asp:Label>
           
             </td>
         </tr>
                
                <tr>
                    <td>
                 <asp:Label ID="Label2" runat="server" Text='<%# Bind("pro_price") %>' ForeColor="#6600ff" Font-Size="20px"  Font-Names="Verdana"></asp:Label>
              
                        
             </td>
         </tr>
                </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

