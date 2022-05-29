<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="booklistRL.addBook" %>

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
            <center><h3>ADD YOUR BOOK</h3></center>
            <hr />
            <br /><br />
            <div class="d-flex justify-content-center">
                <div class="form-row col-sm-5">

                    <div class=" form-group col-md-6">
                        Start Date <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control"  />
                    </div>

                    <div class="form-group col-md-6">
                        End Date <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" class="form-control" />
                    </div>

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
                <div class="form-inline">
                    <asp:Button Text="Publish" ID="Button1" runat="server" OnClick="Button1_Click1" CssClass="btn btn-primary" />&nbsp;&nbsp;
                <%--</div>--%>
                <div class="form-group">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/homePage.aspx" class="form-control">Back
                        <%--<span class="glyphicon glyphicon-chevron-left"></span>--%>
                    </asp:HyperLink>
                        
                </div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>