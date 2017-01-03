<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="traceorder.aspx.cs" Inherits="user_pages_traceorder" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table align="center">
     
        <tr >
            <td colspan="2">

                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            <td>
                <h2>Purchase History</h2>
            </td>
        </tr>
    </table>
      <asp:GridView ID="gvcartdetails" runat="server" AutoGenerateColumns="false" Width="600px"
                      AllowPaging="true" PageSize="8" CellPadding="4" CellSpacing="4"
                      CssClass="Grid"                      
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >

                <Columns>
                     <asp:TemplateField HeaderText="CustomerName">
                        <ItemTemplate>
                            <asp:Label ID="lbproduct_id" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                      
                        </ItemTemplate>
                    </asp:TemplateField>
                   
               
              
                           
                    <asp:TemplateField HeaderText="Product_name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
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
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("pay_date","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>                            
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quntity">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("qty") %>'></asp:Label>
                        </ItemTemplate>                            
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Total Rupees">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("total") %>'></asp:Label>
                        </ItemTemplate>                            
                    </asp:TemplateField>
     </Columns>
          </asp:GridView>
</asp:Content>

