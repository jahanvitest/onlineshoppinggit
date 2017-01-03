<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="admin_city" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="area">
                   <table style="align-self:center; font-family:Calibri; font-size:23px; color:#19b6e9; text-align:center;">
                     
                       <tr>
                           <td>
                              Select state:
                           </td>
                           </tr>
                       <tr>
                           <td>
                               <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True"></asp:DropDownList>
                           </td>
                       </tr>
                       <tr>
                           <td>
                              city name :
                           </td>
                           </tr>
                           <tr> <td>
          <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                            </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-large btn-success" OnClick="LinkButton1_Click">ADD</asp:LinkButton>
                           </td>
                       </tr>
                   </table>
                             
       <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="4" width="200px" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
          <AlternatingRowStyle BackColor="White" />
           
           <Columns>
               <asp:TemplateField HeaderText="City_Id">
                   <ItemTemplate>
                       <asp:Label ID="lnsid" runat="server" Text='<%# Bind("c_id") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="City_name">
                   <ItemTemplate>
                        <asp:Label ID="lnconname" runat="server" Text='<%# Bind("cname") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:CommandField ShowDeleteButton="True" />
               
           </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
  </div>

</asp:Content>

