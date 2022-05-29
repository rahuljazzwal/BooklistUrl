<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showBook.aspx.cs" Inherits="booklistRL.showBook1" %>

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
               <asp:GridView ID="grid1" runat="server" class="table table-active"></asp:GridView>
            </div>
            <div class="form-group d-flex justify-content-center">
                <asp:Button ID="Button2" runat="server" Text="BACK" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
