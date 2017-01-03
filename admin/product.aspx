<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
        
       <div class="area">
            <table style="align-self:center; font-family:Calibri; font-size:23px; color:#19b6e9; text-align:center;">
                     
            <tr>
                <td colspan="3">
                  <div class="img">
                      Manage Product
                  </div>

                </td>
            </tr>
                <tr>
                <td style="  font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                   Category Name 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="220px"></asp:DropDownList>
                    <br />
                </td>
            </tr>
         <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                   Subcategory Name 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="220px" AutoPostBack="True"></asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Name 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Price  
                </td>
         
            <td>
                :
            </td>
                <td>
                     <asp:TextBox ID="txtpprice" runat="server"></asp:TextBox>
      
                     <br />
      
                </td>
                </tr>
             <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Code
                </td>
         
            <td>
                :
            </td>
                <td>
                     <asp:TextBox ID="txtpcode" runat="server"></asp:TextBox>
      
                     <br />
      
                </td>
                </tr>

             <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Details
                </td>
         
            <td>
                :
            </td>
                <td>
                     <asp:TextBox ID="txtpdtil" runat="server" TextMode="MultiLine"
                         ></asp:TextBox>
      
                     <br />
      
                </td>
                </tr>
             <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Stock
                </td>
         
            <td>
                :
            </td>
                <td>
                    <asp:TextBox ID="txtpstock" runat="server"></asp:TextBox>
      
                    <br />
      
                </td>
                </tr>
              <tr>
                <td style="font-family: calibri; font-size: 23px; text-transform: capitalize; color: #0066FF; background-color: #FFFFFF; border-spacing: inherit; empty-cells: hide;">
                    Product Images
                </td>
         
            <td>
                :
            </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
      
                    <br />
      
                </td>
                </tr>
           
            <tr>
                <td colspan="3" class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server"  class="btn btn-large btn-success" OnClick="LinkButton1_Click" >Insert Product</asp:LinkButton>
                </td>
            </tr>
            </table>
        
  
           </div>
        
   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="Gridproduct" runat="server" CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowDeleting="Gridproduct_RowDeleting" OnRowCancelingEdit="Gridproduct_RowCancelingEdit" OnRowEditing="Gridproduct_RowEditing" OnRowUpdating="Gridproduct_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                             <asp:TemplateField HeaderText="Product_Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("product_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="Product_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pro_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product_Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pro_price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("pro_price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product_Image">
                                <EditItemTemplate>
                                  
                                    <asp:FileUpload ID="FileUpload2" runat="server" />   </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("pro_image") %>' height="200px" Width="150px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product_Code">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pro_code") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pro_code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product_Stock">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("stock") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product_Detail">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Text='<%# Bind("pro_details") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("pro_details") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" EditImageUrl="~/img/edit.jpg" />
                             <asp:TemplateField HeaderText="Select All">
                                 <HeaderTemplate>

                                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged1" />  </HeaderTemplate>
                                 <ItemTemplate>
                                     <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                 </ItemTemplate>
                             </asp:TemplateField>
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
        
                  <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-large btn-success" OnClick="LinkButton2_Click">Delete</asp:LinkButton>
       
    
     
</asp:Content>

