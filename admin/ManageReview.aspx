<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ManageReview.aspx.cs" Inherits="admin_ManageReview" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
        .WaitingStar {
            background-image: url("../img/Star.gif");
            height: 17px;
            width: 17px;
        }

        .Star {
            background-image: url("../img/WaitingStar.gif");
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url("../img/FilledStar.gif");
            height: 17px;
            width: 17px;
        }

        .auto-style1 {
            height: 40px;
        }

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
     <asp:GridView ID="gvcartdetails" runat="server" AutoGenerateColumns="False" Width="600px"
                      AllowPaging="True" PageSize="8" DataKeyNames="f_id" CellPadding="4" CellSpacing="4"
                      CssClass="Grid"                       
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" OnPageIndexChanging="gvcartdetails_PageIndexChanging" OnRowDeleting="gvcartdetails_RowDeleting" >

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>

                <Columns>
                    
                    <asp:TemplateField HeaderText="CustomerName">
                        <ItemTemplate>
                           <asp:Label ID="lbfname" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                            
                           <asp:Label ID="lblnm" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="pimg" runat="server" ImageUrl='<%# Bind("pro_image") %>' Height="100px" Width="150px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProductName">
                        <ItemTemplate>
                           <asp:Label ID="lbpnm" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Review">
                        <ItemTemplate>
                           <asp:Label ID="uReview" runat="server" Text='<%# Bind("review") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Rating">
                        <ItemTemplate>
                            <asp:Rating ID="Rating1" runat="server" StarCssClass="WaitingStart" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="WaitingStar"
         CurrentRating='<%# Bind("rate") %>' Width="100px" FilledStarCssClass="FilledStar"  MaxRating="5" AutoPostBack="True"></asp:Rating>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                           <asp:Label ID="rdate" runat="server" Text='<%# Bind("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" ControlStyle-CssClass="btn-primary" />
                    </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
         </asp:GridView>
      
</asp:Content>

