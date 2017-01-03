<%@ Page Title="" Language="C#" MasterPageFile="~/user pages/user.master" AutoEventWireup="true" CodeFile="userreview.aspx.cs" Inherits="user_pages_userreview" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="width: 540px; height: 300px;">

        <caption>
            <h3>------Give review & Rating for the product------</h3>
        </caption>

        <tr>



            <td class="auto-style1" style="align-items: center">User Ratings :
    
                <asp:Rating ID="Rating1" runat="server" StarCssClass="WaitingStart" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="WaitingStar"
                    FilledStarCssClass="FilledStar" OnChanged="Rating1_Changed1" MaxRating="5" AutoPostBack="True">
                </asp:Rating>
     
                <br />

                Your rating is :
                <asp:Label ID="lbcountrate" runat="server" Visible="false"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 80px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" placeholder="Enter Comment"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="align-items: center">
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btnlogin" OnClick="LinkButton2_Click">Submit</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="navbar-link" OnClick="LinkButton1_Click">Back to List</asp:LinkButton>

            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td>
                <asp:DataList id="dlreview" runat="server" Height="300px" Width="500px"  RepeatColumns="3" RepeatDirection="Vertical" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="fnm" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                    <asp:Label ID="lnm" runat="server" Text='<%# Bind("lname") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="pimg" runat="server" ImageUrl='<%# Bind("pro_image") %>' /> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Rating ID="Rating1" runat="server" StarCssClass="WaitingStart" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="WaitingStar"
         CurrentRating='<%# Bind("rate") %>' FilledStarCssClass="FilledStar"  MaxRating="5" AutoPostBack="True">
                </asp:Rating>
     
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>

</asp:Content>

