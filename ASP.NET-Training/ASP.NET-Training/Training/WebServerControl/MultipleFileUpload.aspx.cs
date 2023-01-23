using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class MultipleFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
                HasFiles:       ファイルがアップロードされているかどうか
                PostedFiles:    アップロードされたファイルのコレクション
             */

            //ファイルがアップロードされていれば
            if(FileUpload1.HasFiles)
            {
                //アップロードされたファイルをコレクションから1つずつ取得する
                foreach(var file in FileUpload1.PostedFiles)
                {
                    Label1.Text += "アップロードされたファイルの情報<br/>";
                    Label1.Text += String.Format("ファイル名：{0}<br/>", file.FileName);
                    Label1.Text += String.Format("ファイルサイズ：{0}<br/>", file.ContentLength);
                    Label1.Text += String.Format("ファイルタイプ：{0}<br/>", file.ContentType);

                    //アップロードされたファイルを一時ファイルに保存する
                    file.SaveAs(
                        System.IO.Path.GetTempPath() +
                        System.IO.Path.GetFileName(file.FileName));
                }
            }
        }
    }
}