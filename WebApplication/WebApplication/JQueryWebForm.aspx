<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryWebForm.aspx.cs" Inherits="WebApplication.JQueryWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Probando JQuery</title>
    <script src ="scripts/jquery-3.1.0.js" type ="text/javascript "></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="CLick" Width="138px" />
         <script type="text/javascript">
        $(document).ready(function() {
        $("#Button1").click(function() {
            alert("Holaaaaaa");
        });
 
        });
    </script>
    
    </div>
    </form>
</body>
</html>
