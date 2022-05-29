<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="booklistRL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center><h3>LOGIN HERE!</h3>
        &nbsp;&nbsp;&nbsp;&nbsp;
       <div class="form-group">
   <asp:TextBox runat="server" Id="TextBox1" placeholder="Email" Class="form-control"/>&nbsp;&nbsp;<br /><asp:RegularExpressionValidator ErrorMessage="Email id is not valid" 
        ControlToValidate="TextBox1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
           </div>
       <div class="form-group">
    <asp:TextBox runat="server" ID="TextBox2" TextMode="Password" placeholder="Password" Class="form-control" /><br />&nbsp;&nbsp;<asp:RequiredFieldValidator ErrorMessage="password should not be empty" 
                ControlToValidate="TextBox2" runat="server" /><br />&nbsp;&nbsp;
           </div>

       <div class="form-group">
    <asp:Button Text="LOGIN" Id="Button1" runat="server" OnClick="Button1_Click1" class="btn btn-primary" />
           </div>
       <div class="form-group">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx" CssClass="btn btn-light">REGISTER</asp:HyperLink>
           </div>

        <div class="form-group">
        <asp:Label ID ="label1" runat="server" CssClass="alert alert-warning"></asp:Label>
            </div>
        </center>
    


</asp:Content>
