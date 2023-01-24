<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidatorControl.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.RangeValidatorControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- 
                RangeValidatorコントロールは、指定したコントロールの値が特定の範囲内であることを検証するためのコントロールである

                    MinimumValue:       入力範囲の最小値
                    MaxmumValue:        入力範囲の最大値
                    Type:               入力値のデータ型。Integer,String,Double,Date,Currencyのいずれか
                --%>

            年齢<asp:TextBox ID="Age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="年齢は0-150歳の範囲で入力してください" 
                ControlToValidate="Age" MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br/><br/>
            生年月日<asp:TextBox ID="Birthday" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="誕生日は1850年以降を指定してください" 
                Type="Date" MaximumValue="9999/1/1" MinimumValue="1850/1/1" ControlToValidate="Birthday"></asp:RangeValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
