<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="booklistRL.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />  
    <script src="~/Scripts/jquery-3.3.1.min.js"></script>  
    <script src="~/Scripts/bootstrap.min.js"></script>
    <style>
        body{
            background-image:url('image/tenor1.gif');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        
    </style>
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
            
            
                
                <div class="">
                    <asp:Label ID="label1" runat="server" class="alert-heading" Font-Size="large" ForeColor="Teal"></asp:Label>
                    <hr>
                     &nbsp;&nbsp;
                </div>

                <div class="input-group mb-3" style="width:1050px;">
                    <asp:TextBox ID="Textbox1" runat="server" placeholder="Search" CssClass="form-control"></asp:TextBox>
                    <%--<input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1">--%>
                    <div class="input-group-prepend">
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="Button3_Click"/>
                       <%--<button class="btn btn-outline-secondary" type="button">Button</button>--%>
                    </div>
                </div>

            <div class ="form-inline d-flex justify-content-center">
                <asp:Button Text=" MY BOOKS" runat="server" ID="Button1" OnClick="Button1_Click" class="btn btn-info"/>&nbsp;&nbsp;
                <asp:Button Text="My Suggestions" runat="server" ID="Button2" OnClick="Button2_Click" CssClass="btn btn-info" />
                
            </div>
        <%--<div class="topnav d-flex justify-content-end" style="margin-top:10px;">
            <input type="text" placeholder="Search" />
        </div>--%>
            <div class="form-group" style="padding-top:15px; width:1050px;">
                    <asp:GridView ID="GridView1" runat="server" class="table table-dark table-striped"></asp:GridView>
            </div>
            <div class="form-group" style="padding-top:15px;">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addBook.aspx" CssClass="btn btn-dark">ADD NEW BOOK</asp:HyperLink>&nbsp;&nbsp;<br /><br />
            </div>
            <div class="form-group" style="padding-top:15px; width:1050px;">
                <asp:GridView ID="GridView2" runat="server" class="table table-borderless"></asp:GridView>
            </div>

            <div class="form-group" style="padding-top:15px; width:1050px;">
                <asp:GridView ID="GridView3" runat="server" class="table table-borderless"></asp:GridView>
            </div>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx" CssClass="btn btn-outline-success my-2 my-sm-0">LOGOUT</asp:HyperLink>
    </form>
        </center>
</body>
</html>
