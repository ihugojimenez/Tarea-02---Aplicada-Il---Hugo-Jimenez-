<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeSSionsWebForm.aspx.cs" Inherits="WebApplication.SeSSionsWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" id="BodyTag">
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ColorSelector" runat="server" autopostback="true" onselectedindexchanged ="ColorSelector_IndexChanged " Height="19px" Width="175px">
           <asp:ListItem Value="White" Selected="True">White</asp:ListItem>
            <asp:ListItem Value="Black">Black</asp:ListItem>
            <asp:ListItem Value="Red">Red</asp:ListItem>
            <asp:ListItem Value="Blue">Blue</asp:ListItem>
            <asp:ListItem Value="Green">Green</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
