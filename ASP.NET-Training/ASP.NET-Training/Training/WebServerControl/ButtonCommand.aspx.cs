using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class ButtonCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
            編集ボタンはコマンド名"Edit"、並び替えボタン２つはコマンド名"Sort"となっており
            並び替えボタンのコマンド引数はそれぞれAsc,Descとなっている
            また、３つのボタンのイベント処理はCommandイベントを処理するButton1_Commandメソッドに割り当てられている
         */
        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            //コマンド名で場合分け
            switch(e.CommandName)
            {
                //編集ボタンの場合は
                case "Edit":
                    Label1.Text = "編集画面へ遷移します";
                    break;

                //並び替えの場合は
                case "Sort":

                    //さらにコマンド引数で場合分け
                    //CommandArgumentプロパティはobject型なのでswitch文で条件分岐するため、ToStringメソッドで文字列型に変換する
                    switch(e.CommandArgument.ToString())            
                    {
                        case "Asc":
                            Label1.Text = "昇順ソートを行います";
                            break;
                        case "Desc":
                            Label1.Text = "降順ソートを行います";
                            break;
                    }

                    break;
            }

        }

    }
}