<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidacionesWebForm.aspx.cs" Inherits="WebApplication.ValidacionesWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99px;
        }
        .auto-style2 {
            width: 448px;
        }
        .auto-style3 {
            width: 178px;
        }
        .auto-style4 {
            width: 472px;
        }
        .auto-style5 {
            width: 163px;
        }
        .auto-style6 {
            width: 383px;
        }
        .auto-style7 {
            width: 174px;
        }
        .auto-style8 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 76%;">
            <tr>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style2">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="228px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Debe ingresar un nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Apellido</td>
                <td class="auto-style2">
                    <asp:TextBox ID="LastTextBox" runat="server" Width="226px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastTextBox" ErrorMessage="Debe ingresar el apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="268px" />
                </td>
                <td class="auto-style2">Request Validator</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Compare Validator</td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Validar" Width="82px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña</td>
                <td class="auto-style4">
                    <asp:TextBox ID="PassTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTextBox" ControlToValidate="AuxTextBox" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Repetir&nbsp; Contraseña</td>
                <td class="auto-style4">
                    <asp:TextBox ID="AuxTextBox" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">Range Validator<br />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Edad</td>
                <td class="auto-style6">
                    <asp:TextBox ID="AgeTextBox" runat="server" Width="49px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" ErrorMessage="Debe estar entre el rango de 18 a 50 " ForeColor="Red" MaximumValue="50" MinimumValue="18"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Regular Expression</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="196px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Ingrese un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style8">Custom Validator</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Mensaje</td>
                <td>
                    <asp:TextBox ID="MessageTextBox" runat="server" Height="89px" TextMode="MultiLine" Width="634px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="MessageTextBox" ErrorMessage="Supera los 50 caracteres permitidos" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
