<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Student_Info_Manager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 542px">
        <div style="font-size:x-large" align =" center"> Student Info Manager </div> 
        <table class="w-100" style="width: 576px; height: 250px">
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">&nbsp;</td>
                <td style="width: 341px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">Student ID</td>
                <td style="width: 341px">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="mt-0"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Get" Width="72px" />
                </td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">Student Name</td>
                <td style="width: 341px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">Address</td>
                <td style="width: 341px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">Age</td>
                <td style="width: 341px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">Contact</td>
                <td style="width: 341px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">&nbsp;</td>
                <td style="width: 341px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 166px">&nbsp;</td>
                <td style="width: 341px">
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="75px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="77px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" onClientClick = " return confirm ('Are You Sure to Delete'); " Text="Delete" Width="72px" />
&nbsp;
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" Width="66px" />
                </td>
            </tr>
        </table>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Height="142px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 402px; margin-top: 0px" Width="478px">
        </asp:GridView>
        <br />
    </div>

</asp:Content>
