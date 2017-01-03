<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="regform">
         <h3>Shipping Detail</h3>
  <table align="center">
      <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Full name 
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtfname" runat="server" placeholder="Enter fullname" ></asp:TextBox>
            </td>
        </tr>
      
       <tr>
            <td style="font-family: Calibri; font-size: 17px; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: capitalize; color: #666666; table-layout: fixed; border-collapse: inherit; border-spacing: inherit; empty-cells: hide; caption-side: top">
              Place  Date
            </td>
            <td class="auto-style1">
                :
            </td>
            <td style="display: inline">
                <asp:TextBox ID="txtregisterdate" runat="server" placeholder="Place date" ReadOnly="true"></asp:TextBox>
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
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" placeholder="Enter Address"></asp:TextBox>
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
                    <asp:DropDownList ID="ddlcountry" runat="server" width="200px"  AutoPostBack="True" ></asp:DropDownList>
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
                    <asp:TextBox ID="txtzip" runat="server" placeholder=" Enter Zip / Postal code"></asp:TextBox>
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
                    <asp:TextBox ID="txtno" runat="server" placeholder="Enter Mobile number"></asp:TextBox>
                </td>
            </tr>
    
        
          <tr>

              <td colspan="3">
                  <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-large btn-success">Place Your order</asp:LinkButton>
              </td>
          </tr>
     
        </table>
         </div>
    
</asp:Content>

