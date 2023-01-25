<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidatorControl.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.CompareValidatorControl" %>

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
                CompareValidatorコントロールは、検証対象のコントロールの値を、定数または他のコントロールの値と比較して検証するコントロールである

                    Operator:           比較方法を指定する
                    ControlToCompare:   比較対象のコントロールを指定する
                    ValueToConpare:     比較対象の定数値を指定する
                    Type:               入力の型

                Operatorプロパティの値と意味
                    
                    Equal:              値が等しい
                    NotEqual:           値が等しくない
                    GreaterThan:        値が大きい
                    GreaterThanEqual:   値が等しいか大きい
                    LessThan:           値が小さい
                    LessThanEqual:      値が等しいか小さい
                    DataTypeCheck:      データ型のチェックのみを行う
                --%>

            生年<asp:TextBox ID="Birthday" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ErrorMessage="生年は1850以降である必要があります" 
                ControlToValidate="Birthday" ValueToCompare="1850" Operator="GreaterThan" Type="Integer"></asp:CompareValidator>
            <br/><br/>
            小学校の入学年<asp:TextBox ID="Enroll" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="生年月日は小学校の入学年より前である必要があります" 
                ControlToValidate="Birthday" ControlToCompare="Enroll" Operator="LessThan" Type="Integer"></asp:CompareValidator>

            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
