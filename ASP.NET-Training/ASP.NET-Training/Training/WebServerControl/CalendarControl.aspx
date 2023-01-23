<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.CalendarControl" %>

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
                Calendarコントロールは、Webアプリケーションでユーザーが日付を入力する際に使用するコントロールである
                HTMLには直接対応するコントロールがないため、リンクなどの複数のタグで一表示を実現している
                なお、Calendarコントロールを使用するためには、クライアントサイドのJavaScriptが必要である

                    SelectedDate:       選択された日付
                    VisibleDate:        カレンダーで表示される月
                    Caption:            カレンダーでキャプション文字列
                    SelectionMode:      選択する単位を日(Day)、週(Week)、月(DayWeekMonth)のいずれかとするか
                    FristDayOfWeek:     週の最初の曜日を何曜日にするか
                    ShowDayHeader:      曜日を表示するかどうか
                --%>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:Calendar ID="Calendar1" runat="server" 
                Caption="日付を選択してください" 
                FirstDayOfWeek="Sunday" 
                SelectionMode="DayWeekMonth" 
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </div>
    </form>
</body>
</html>
