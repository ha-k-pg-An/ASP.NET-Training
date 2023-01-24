using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.ValidationControl
{
    public partial class BasicValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ページ全体の検証が成功しているかどうかをチェック
            if(Page.IsValid)
            {
                //検証が成功時の処理
                Label1.Text = "検証が成功です";
            }
            else
            {
                //検証が失敗時の処理
                Label1.Text = "検証が失敗です";

                /*
                    クライアントサイドのJavaScriptが無効化されている場合はは、検証はポストバックの際に行われる
                    今回のコードであれば「検証が失敗です」というメッセージが出力される

                    検証コントロールを使うページは、クライアントサイドのJavaScriptが有効か無効かに関係なく、
                    サーバーサイドで必ずPageクラスの「IsVaild」プロパティをチェックしてから処理を行うようにしよう
                 */
            }
        }
    }
}