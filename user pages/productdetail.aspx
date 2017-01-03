<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td>

    <asp:DetailsView ID="detailproduct" runat="server" DataKeyNames="product_id" Height="250px" Width="500px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False" CaptionAlign="Top" OnItemCommand="DetailsView1_ItemCommand" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" ForeColor="#333333" Font-Size="15px" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#3366ff" Font-Size="15px" />
        <Fields>
            <asp:TemplateField>
                <HeaderTemplate>
                   Product Details
                </HeaderTemplate>
              
                
            </asp:TemplateField>
            <asp:TemplateField >
                <ItemStyle  Font-Names="verdana" Font-Size="30px" ForeColor="#333333"/>
                <ItemTemplate >
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("pro_image") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Productname">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Productcode">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pro_code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Productprice">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("pro_price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductDetails">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("pro_details") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Stock Detail">
                <ItemTemplate>
                    Stock In<asp:Label ID="Label6" runat="server" Text='<%# Bind("stock") %>' Visible="false"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Quantity">
              <ItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
                  <asp:RequiredFieldValidator runat="server" ID="reqqty" ErrorMessage="Must Enter Quntity" Text="*" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic" ViewStateMode="Enabled">*</asp:RequiredFieldValidator>
                        </ItemTemplate>
             </asp:TemplateField>
                    
                
            <asp:TemplateField>
                <ItemTemplate>
                  Total :  <asp:Label ID="lbtotal" runat="server" Text="Label" Visible="false"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                     <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"  class="btn btn-large btn-success" CommandName="buy">Buy Now</asp:LinkButton>

                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-large btn-success" CommandName="cart" CommandArgument='<%# Bind("product_id") %>'>Add to cart</asp:LinkButton>
                              
             
                     </ItemTemplate>
                 </asp:TemplateField>
        </Fields>

    </asp:DetailsView>
                <asp:LinkButton ID="LinkButton3" runat="server" class="navbar-link" OnClick="LinkButton3_Click" Font-Size="Medium">Give review & Rating to the product</asp:LinkButton>
       


            </td>
        </tr>
    </table>
    


   
</asp:Content>

