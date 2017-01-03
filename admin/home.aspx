<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.my ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color:#38c8d7;
}

.my1 li a {
    display: block;
    color: #38c8d7;
    padding: 8px 16px;
    text-decoration: none;
    list-style:none;
   font-family:Calibri;
   font-size:40px;
}

.my1 li a.active {
    background-color: #4CAF50;
    color: white;
     text-decoration: none;
     font-family:Calibri;
   font-size:40px;

      list-style:none;
}

.my1  a:hover:not(.active) {
    background-color:#4CAF50;
    color: white;
     list-style:none;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>

           
    <asp:Label runat="server" ID="name" Font-Size="XX-Large" ForeColor="#0066ff"></asp:Label>
                 </td>
        </tr>
    </table>
  <ul class="my">
    
       
       
              <li class ="my1"><a href="country.aspx">Manage Country</a></li>
             <li class ="my1"> <a href="state.aspx">Manage State</a></li>
              <li class ="my1"><a href="city.aspx">Manage City</a></li>
               <li class ="my1"><a href="../changepassword.aspx">Admin Change Password</a>
      </li>
      <li class ="my1"><a href="ManageReview.aspx">Admin Manage User Reviews</a>
          </li>
  </ul>

    <br />
  <h2> No. of register user in OpenBazar : <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></h2>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="User_id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("user_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Firstname">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lastname">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email_id">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of birth">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("dob","{0:dd/MM/yyyy}") %>'  ></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Register Date">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("registerdate","{0:dd/MM/yyy}")%>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("con_name") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("sname") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("cname") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact No">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("conno") %>'></asp:Label>
                </ItemTemplate>
 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Zip code">
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("zip") %>'></asp:Label>
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
            
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

