<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.CustomValidator" %>

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
                CustomValidatorコントロールを使用することで、独自のコードによる検証を行える
                CustomValidatorコントロールでは、サーバサイドの検証とクライアントサイドの検証両方をカスタマイズできる
                サーバサイドの検証は必須だが、クライアントサイドの検証は省略可能である

                    ServerValidateイベント:                      サーバサイドの検証イベント
                    ClientValidationFunctionプロパティ:          クライアントサイドの検証を行う関数名を指定 
                --%>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br/>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="入力内容にASP.NETという文字列が含まれていません" 
                OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
            <br/>↑サーバサイドによる検証<br/>
            <br/><br/>


            <%-- 
                クライアントサイドの検証を行うためは、クライアントサイドの検証をJavaScriptで記述し、
                ClientValidationFunctionプロパティに関数名を指定する
                --%>
            <script type="text/javascript">
                //クライアントサイドの検証を行う関数
                function clientValidate(src, args) {
                    //サーバサイドと同じく、"ASP.NET"という文字列が含まれているかどうかで検証
                    if (args.Value.indexOf("ASP.NET") >= 0)
                        args.IsValid = true;
                    else
                        args.IsValid = false;
                }
                </script>

            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br/>
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="入力内容にASP.NETという文字列が含まれていません" 
                ControlToValidate="TextBox2" ClientValidationFunction="clientValidate"></asp:CustomValidator>
            <br/>↑クライアントサイドによる検証<br/><br/>
            <asp:Button ID="Button2" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
