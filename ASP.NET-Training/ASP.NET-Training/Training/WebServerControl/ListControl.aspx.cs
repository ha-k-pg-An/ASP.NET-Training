using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class ListControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
            リスト系コントロールで選択した項目の取得方法

                SelectedItem:   選択されたListItemオブジェクト

                SelectedValue:  選択されたListItemオブジェクトのValueプロパティ
 
                ListItemオブジェクトのSeletedプロパティ:
                                そのListItemオブジェクトが選択されているかどうか
         */
        protected void Button1_Click(object sender, EventArgs e)
        {
            //メッセージ表示用ラベルに選択内容をを出力していく
            Label1.Text = "<ul>";

            //複数選択のListBoxコントロールの選択項目の取得
            string selectedItemText = "";
            foreach(ListItem item in ListBox1.Items)
            {
                //選択されていればTextプロパティ取得
                if(item.Selected)
                {
                    selectedItemText += item.Text + "";
                }
            }

            //ListBoxコントロールの選択内容を表示
            Label1.Text += string.Format(
                "<li>ListBoxコントロールでは{0}が選択されています<li>", selectedItemText);

            //DropDownListコントロールの選択項目の取得
            Label1.Text +=
                string.Format("<li>DropDownListコントロールでは、テキストが{0}、値が{1}のListItemが選択されています<li>",
                DropDownList1.SelectedItem.Text, DropDownList1.SelectedValue);

            //CheckBoxListコントロールの選択項目の取得
            string selectedCheckBoxText = "";
            foreach(ListItem item in CheckBoxList1.Items)
            {
                //選択されていればTextプロパティ取得
                if(item.Selected)
                {
                    selectedCheckBoxText += item.Text + "";
                }
            }

            //CheckBoxListコントロールの選択内容を表示
            Label1.Text += string.Format("<li>CheckBoxListコントロールでは{0}が選択されています<li>", selectedCheckBoxText);

            //RadioButtonListコントロールの選択項目の取得
            if(RadioButtonList1.SelectedItem != null)
            {
                Label1.Text +=
                    string.Format("<li>RadioButtonListコントロールでは、テキスト{0}、値が{1}のListItemが選択されています<li>",
                    RadioButtonList1.SelectedItem.Text,
                    RadioButtonList1.SelectedValue);

                Label1.Text += "</ul>";
            }
        }

    }
}