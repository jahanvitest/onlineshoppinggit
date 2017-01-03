<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

         <div class="regform">
         <h3>Registration</h3>
  <table align="center">
      <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
                Firstname 
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtfname" runat="server" placeholder="Firstname" ></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
             Lastname
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtlname" runat="server" placeholder="Lastname" ></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Email-id
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtmail" runat="server" placeholder="Email-id" ></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
             Password 
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
            </td>
        </tr>
      <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
          Confirm password 
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtconpass" runat="server" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Gender :
            </td>
            <td class="auto-style1">
                :
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="92px" RepeatColumns="2">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
      
         <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Date of Birth 
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

            <asp:TextBox ID="txtbirthdate" runat="server" placeholder="Date of Birth" ></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtbirthdate"></asp:CalendarExtender>
             </td>
        </tr>
       <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Register Date
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtregisterdate" runat="server" placeholder="Register date" ReadOnly="true"></asp:TextBox>
             </td>
        </tr>

        
	<tr><td colspan ="3">
           <h3> Address Information</h3>
	    </td></tr>
     	
        
            <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                    Address 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                    Country 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:DropDownList ID="ddlcountry" runat="server" width="200px"  AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>

      <tr>
          <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
              State</td>
          <td>:</td>
          <td>
              <asp:DropDownList ID="ddlstate" runat="server" width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
              </asp:DropDownList>
          </td>
      </tr>
             <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                   city
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:DropDownList ID="ddlcity" runat="server" width="200px"></asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                   Zip / Postal code
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtzip" runat="server" placeholder="Zip / Postal code"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                  Addtional Information
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtaddinfo" runat="server" TextMode="MultiLine" placeholder="Additional Information"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font-family: calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666">
                   Mobile number 
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="txtno" runat="server" placeholder="Mobile number"></asp:TextBox>
                </td>
            </tr>
      <caption>
          <br />
          <tr>
              <td colspan="3">
                  <asp:Button ID="Button1" runat="server" class="btn btn-large btn-success" Text="Register" OnClick="Button1_Click" />
              </td>
          </tr>
      </caption>
        </table>
         </div>
    
   </ContentTemplate>
    </asp:UpdatePanel>
        
  

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 103px
        }
    </style>
</asp:Content>


