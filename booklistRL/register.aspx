<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="booklistRL.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />  
    <script src="~/Scripts/jquery-3.3.1.min.js"></script>  
    <script src="~/Scripts/bootstrap.min.js"></script>  
    <title></title>
</head>
<body>
    <center>
    <h3>REGISTER HERE!</h3>
        &nbsp;&nbsp;&nbsp;&nbsp;
    <form id="form1" runat="server">
        <div class="form-group col-sm-5">
        <asp:TextBox runat="server" Id="TextBox1" CssClass="form-control" placeholder="Name"/>&nbsp;&nbsp;<br /><asp:RequiredFieldValidator ErrorMessage="Name should not be null" ControlToValidate="TextBox1" runat="server" /><br /> 
            </div>
        <div class="form-group col-sm-5">
        <asp:TextBox runat="server" Id="TextBox2" CssClass="form-control" placeholder="Email"/>&nbsp;&nbsp;<br /><asp:RegularExpressionValidator ErrorMessage="Email id is not valid" ControlToValidate="TextBox2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br /> 
            </div>

        <div class="form-row col-sm-5">
            <div class="form-group col-md-6">
        <asp:TextBox runat="server" Id="TextBox3" TextMode="Password" class="form-control" placeholder="Password"/>
                </div>
            <div class="form-group col-md-6">
        <asp:TextBox runat="server" Id="TextBox4" TextMode="Password" class="form-control" placeholder="Re-enter Password"/>
                <asp:CompareValidator ErrorMessage="Password and confirm password should be same" ControlToValidate="TextBox4" runat="server" ControlToCompare="TextBox3" /><br /> 
                </div>
            </div>
        <div class="form-row col-sm-5">
            <div class="form-group col-md-6">
                <asp:Button Text="REGISTER" Id="Button1" runat="server" OnClick="Button1_Click1" CssClass="btn btn-primary" /> 
             </div>
            <div class="form-group col-md-6">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="btn btn-light">LOGIN</asp:HyperLink>
             </div>
        </div>
            <div class="form-group">
                <asp:Label ID="label1" runat="server" CssClass="alert alert-warning"></asp:Label>
            </div>

        </form>
        </center>
</body>
</html>
