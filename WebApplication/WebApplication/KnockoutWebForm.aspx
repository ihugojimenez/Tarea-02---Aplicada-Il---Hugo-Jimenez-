<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KnockoutWebForm.aspx.cs" Inherits="WebApplication.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Probando</h1>
    <p>Primer Nombre: <input data-bind="value: firstString" /></p>
   <p>Primer Apellido: <input data-bind="value: secondString" /></p>

   <p>Primer Nombre: <strong data-bind="text: firstString">Hi</strong></p>
   <p>Primer Apellido: <strong data-bind="text: secondString">There</strong></p>

   <p>Nombre y Apellido: <strong data-bind="text: thirdString"></strong></p>

     <script>   
     function AppViewModel() {
       this.firstString = ko.observable("");
       this.secondString = ko.observable("");

       this.thirdString = ko.computed(function() {
	     return this.firstString() + " " + this.secondString();
    }, this);
   }

    ko.applyBindings(new AppViewModel());

    </script>
    </div>
    </form>
</body>
</html>
