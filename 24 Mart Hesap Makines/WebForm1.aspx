<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HesapMakinesi.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hesap Makinesi</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }
        .hesap-makinesi {
            width: 220px;
            margin: auto;
            padding: 15px;
            border: 2px solid #333;
            border-radius: 10px;
            background-color: #f4f4f4;
        }
        .ekran {
            width: 100%;
            height: 50px;
            font-size: 20px;
            text-align: right;
            padding: 5px;
            margin-bottom: 10px;
        }
        .butonlar {
            display: grid;
            grid-template-columns: repeat(4, 50px);
            gap: 5px;
        }
        .butonlar input {
            width: 50px;
            height: 50px;
            font-size: 18px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            background-color: #ddd;
        }
        .butonlar input.operator {
            background-color: orange;
            color: white;
        }
        .butonlar input.equal {
            background-color: green;
            color: white;
        }
        .butonlar input.clear {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="hesap-makinesi">
            <asp:TextBox ID="txt_metin" runat="server" CssClass="ekran" ReadOnly="true"></asp:TextBox>
            <div class="butonlar">
                <asp:Button ID="btn7" runat="server" Text="7" OnClick="Btn_Click" />
                <asp:Button ID="btn8" runat="server" Text="8" OnClick="Btn_Click" />
                <asp:Button ID="btn9" runat="server" Text="9" OnClick="Btn_Click" />
                <asp:Button ID="btnBol" runat="server" Text="÷" CssClass="operator" OnClick="Btn_Click" />
                
                <asp:Button ID="btn4" runat="server" Text="4" OnClick="Btn_Click" />
                <asp:Button ID="btn5" runat="server" Text="5" OnClick="Btn_Click" />
                <asp:Button ID="btn6" runat="server" Text="6" OnClick="Btn_Click" />
                <asp:Button ID="btnCarp" runat="server" Text="×" CssClass="operator" OnClick="Btn_Click" />
                
                <asp:Button ID="btn1" runat="server" Text="1" OnClick="Btn_Click" />
                <asp:Button ID="btn2" runat="server" Text="2" OnClick="Btn_Click" />
                <asp:Button ID="btn3" runat="server" Text="3" OnClick="Btn_Click" />
                <asp:Button ID="btnCikar" runat="server" Text="-" CssClass="operator" OnClick="Btn_Click" />
                
                <asp:Button ID="btn0" runat="server" Text="0" OnClick="Btn_Click" />
                <asp:Button ID="btnSil" runat="server" Text="C" CssClass="clear" OnClick="BtnSil_Click" BackColor="#336600" />
                <asp:Button ID="btnEsittir" runat="server" Text="=" CssClass="equal" OnClick="BtnEsittir_Click" />
                <asp:Button ID="btnTopla" runat="server" Text="+" CssClass="operator" OnClick="Btn_Click" />
            </div>
        </div>
    </form>
</body>
</html>
