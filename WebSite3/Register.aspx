<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" Text="Username :*" runat="server" />
    <asp:TextBox ID="txtUserName" runat="server" />
    <br />
    <asp:Label ID="Label2" Text="Password :*" runat="server" />
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
    <br />
    <asp:Label ID="Label3" Text="Confrim Password :*" runat="server" />
    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" />
    <br />
    <asp:Label ID="Label4" Text="Email :*" runat="server" />
    <asp:TextBox ID="txtEmail" runat="server" />
    <br />
    <asp:Label ID="Label5" Text="Adress :" runat="server" />
    <asp:TextBox ID="txtAdress" runat="server" />
    <br />
    <asp:Label ID="Label6" Text="Additional Contact Detail :" runat="server" />
    <asp:TextBox ID="txtContact" runat="server" />
    <br />
    <asp:Label ID="Label7" Text="First Name :" runat="server" />
    <asp:TextBox ID="txtFName" runat="server" />
    <br />
    <asp:Label ID="Label8" Text="Last Name :" runat="server" />
    <asp:TextBox ID="txtLName" runat="server" />
    <br />
    <asp:Label ID="Label9" Text="Title :" runat="server" />
    <asp:DropDownList ID="lstTitle" runat="server">
        <asp:ListItem Text="Mr." Value=0 />
        <asp:ListItem Text="Ms." Value=1 />
        <asp:ListItem Text="Mrs." Value=2 />
        <asp:ListItem Text="Dr." Value=3 />
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label10" Text="Account Number :*" runat="server" />
    <asp:TextBox ID="txtAccount" runat="server" />
    <br />
    <asp:Button ID="cmdAdd" Text="Register" runat="server" />
</asp:Content>