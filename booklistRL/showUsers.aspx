<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showUsers.aspx.cs" Inherits="booklistRL.showUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />  
    <script src="~/Scripts/jquery-3.3.1.min.js"></script>  
    <script src="~/Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-group">
                <asp:GridView ID="grid1" runat="server" CssClass="table table-striped"></asp:GridView>
            </div>
            <div class="form-group d-flex justify-content-center">
                <asp:Button ID="Button1" Text="BACK" runat="server" OnClick="button1_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
