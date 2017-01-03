<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="Userprofile.aspx.cs" Inherits="user_pages_Userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 &nbsp;&nbsp;&nbsp;&nbsp;
    <table align="center">
        <tr>
            <td>
  <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="XX-Large" ForeColor="#3333ff" ></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td>

            
     <asp:DetailsView ID="DVUser" runat="server" AllowPaging="True" 
                AutoGenerateRows="False"  Width="560px" 
              CellPadding="4" HeaderText="User Details" style="text-align: left" ForeColor="#333333" GridLines="None" OnItemUpdating="DVUser_ItemUpdating" OnModeChanging="DVUser_ModeChanging" OnPageIndexChanging="DVUser_PageIndexChanging" OnDataBound="DVUser_DataBound">
           
         <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
           
        <Fields>
            <asp:TemplateField HeaderText="User_id">
                 <ItemTemplate>
                    <asp:Label ID="lbuid" runat="server" Text='<%# Bind("user_id") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Firstname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Lastname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Email-id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
              <EditItemTemplate>
             <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                     </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date of birth">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dob","{0:dd/MM/yyyy}") %>'></asp:TextBox>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("dob","{0:dd/MM/yyyy}") %>'></asp:Label>
                </ItemTemplate>
                    </asp:TemplateField>
              
                
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("address") %>' TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2"  runat="server"  AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"  AutoPostBack="true" Width="200px">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("con_name") %>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="State">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true" Width="200px" >
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("sname") %>'></asp:Label>
                </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="City">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="true" Width="200px">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("cname") %>'></asp:Label>
                </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Contact no">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("conno") %>'></asp:TextBox>
                                            </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("conno") %>'></asp:Label>
                </ItemTemplate>
                                            </asp:TemplateField>
                 <asp:TemplateField HeaderText="Zip code">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("zip") %>'></asp:TextBox>
                     </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("zip") %>'></asp:Label>
                </ItemTemplate>
        </asp:TemplateField>
       
            <asp:CommandField ShowEditButton="True" EditImageUrl="~/img/edit.jpg" ControlStyle-CssClass="btn-large"   ControlStyle-Font-Size="20px" ControlStyle-ForeColor="#666666"  />
        </Fields>
                <FooterStyle BackColor="#00ccff" ForeColor="White" Font-Size="Medium" />
                <RowStyle BackColor="#6699ff" Font-Size="Medium" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Font-Size="Medium" />
                <HeaderStyle BackColor="#507CD1"  ForeColor="White" HorizontalAlign="Center" Font-Size="Medium" />
                <AlternatingRowStyle BackColor="White" Font-Size="Medium" />
         <CommandRowStyle BackColor="#D1DDF1"  Font-Size="Medium" />
                <EditRowStyle BackColor="#2461BF" Font-Size="Medium" />
            </asp:DetailsView>
                </td>
        </tr>
    </table>
            
   
</asp:Content>

