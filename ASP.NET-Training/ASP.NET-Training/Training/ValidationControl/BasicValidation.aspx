<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicValidation.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.BasicValidation" %>

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
                検証コントロールは、ユーザーが入力した内容について、指定されたルールに沿って検証を行い、
                検証が失敗した場合にはエラーメッセージを表示するコントロールである

                    RequiredFieldValidator:         入力必須項目を検証する
                    RangeValidator:                 入力範囲を検証する
                    CompareValidator:               入力内容を比較して検証する
                    RegularExpressioinValidator:    入力内容を正規表現で検証する
                    CustomValidator:                独自の方法で検証する
                    ValidationSummary:              検証結果のエラーメッセージをまとめて表示する

                ※そのうち、ValidationSummaryコントロールは他と異なり、それ自体が検証機能を持つのではなく、
                　検証結果のエラーメッセージをまとめて表示するためのコントロールである

                検証コントロールの主な共通プロパティ
                    ControlToValidate:              検証対象となるコントロールを指定する
                    DisPlay:                        エラーメッセージを検証コントロールで表示するかどうか
                                                    表示しない(None)、静的に表示し(Static)、動的に表示(Dynamic)のいずれかを指定。デフォルトはStatic
                    EnableClientScript:             WebブラウザーでのJavaScriptによる検証を行うかどうかを指定する
                    Enabled:                        検証コントロールの有効、無効を指定する
                    ErrorMessage:                   検証エラー時にValidationSummaryコントロールに表示するメッセージを指定する
                    Text:                           検証エラー時に検証コントロールで表示するメッセージを指定する
                    IsVaild:                        検証が成功したかどうかを取得、設定する
                    SetFocusOnError:                検証失敗時に検証対象コントロールにフォーカスを移動するかどうかを指定する
                    ValidationGroup:                この検証コントロールの属する検証グループを指定する                    
                --%>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="テキストを入力してください" 
                ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
