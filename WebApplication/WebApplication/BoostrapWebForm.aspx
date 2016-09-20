<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoostrapWebForm.aspx.cs" Inherits="WebApplication.BoostrapWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class ="container-fluid">
            <div class ="jumbotron" style="border:1px solid #888; box-shadow:0px 2px 5px #ccc;">
                <h1>Hola lolo</h1>
            </div>
            <div class="col-md-4">
                <asp:Button ID="Aceptar" runat="server" Text="Button" cssclass="btn btn-danger"/>
                <asp:Button ID="Cancelar" runat="server" Text="Button" cssclass="btn btn-success"/>
            </div>
            <div class="col-md-4">
                colum2
            </div>
            <div class="col-md-4">
                colum3
            </div>
            
        </div>
    
    </div>
    </form>
</body>
</html>
