<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="booklistRL.adminPage" %>

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
            <center><h3>WELCOME ADMIN</h3></center>
            <hr />
            <center><h6>ADD BOOKS</h6></center>
            <br /><br />
            <div class="d-flex justify-content-center">
                <div class="form-row col-sm-5">

                    <%--<div class=" form-group col-md-6">
                        Start Date <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control"  />
                    </div>--%>

                    <%--<div class="form-group col-md-6">
                        End Date <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" class="form-control" />
                    </div>--%>

                    <div class="form-group col-sm-12">
                        Enter Book Name <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"/>
                            <asp:RequiredFieldValidator ErrorMessage="Book Name should not be null" ControlToValidate="TextBox1" runat="server" />
                    </div>

                    

              <div class="form-group col-sm-12">
            Select Book Category <asp:DropDownList ID="DropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Thriller</asp:ListItem>
                <asp:ListItem>Romance</asp:ListItem>
                <asp:ListItem>Mystery</asp:ListItem>
                <asp:ListItem>Sci-Fi</asp:ListItem>
            </asp:DropDownList><br /><br />
            </div>

            <div class="form-group col-sm-12">
                 Write Your Review <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"/> 
                 <asp:RequiredFieldValidator ErrorMessage="Review should not be null" ControlToValidate="TextBox1" runat="server" />
            </div>
                
           
               <%-- <div class="form-group col-sm-12">
            Write Your Review <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"/> 
                <asp:RequiredFieldValidator ErrorMessage="Review should not be null" ControlToValidate="TextBox1" runat="server" />
                </div>--%>
                <div class="form-inline">
                    <asp:Button Text="Publish" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary" />&nbsp;&nbsp;
                <%--</div>--%>
                <div class="form-group">
                    <asp:HyperLink ID="hyper1" Text="Show Book List" runat="server" NavigateUrl="~/showBook.aspx" CssClass="btn btn-outline-info"></asp:HyperLink>
                </div>

                <div class="form-group" style="padding:5px;">
                    <asp:HyperLink ID="hyper2" runat="server" Text="Show Users" NavigateUrl="~/showUsers.aspx" CssClass="btn btn-outline-info"></asp:HyperLink>
                </div>

                <div class="form-group" style="padding:5px;">
                    <asp:HyperLink ID="hyper3" runat="server" Text=" LOG OUT" NavigateUrl="~/Default.aspx" CssClass="btn btn-danger"></asp:HyperLink>
                </div>
            </div>
                <div class="d-flex justify-content-center">
                <div class="form-group">
                        <asp:Label ID="label1" runat="server" CssClass="alert alert-warning"></asp:Label>
                    </div>
                </div>    
        </div>
                
    </form>
</body>
</html>
