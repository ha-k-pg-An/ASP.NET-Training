using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class FileUploadControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            ポストバック後にFileUploadコントロールで使用可能なプロパティ
                
                HasFile:        ファイルがアップロードされたかどうか
                PostedFile:     アップロードされたファイル

            PostedFileプロパティでは、アップロードされたファイルを表すHttpPostedFileというクラスのインスタンスを取得できる

                FileNameプロパティ:          ファイルの名前。Internet Explorerの場合はフルパス
                ContentLengthプロパティ:     ファイルのサイズ
                ContentTypeプロパティ:       ファイルの種類
                InputStreamプロパティ:       ファイルの内容
                SaveAsメソッド:              アップロードされたファイルに名前を付けて保存する
             */

            //ファイルがアップロードされていれば
            if(FileUpload1.HasFile == true)
            {
                //アップロードされたファイルを取得する
                var file = FileUpload1.PostedFile;
                Label1.Text = "アップロードされたファイルの情報<br/>";
                Label1.Text += string.Format("ファイル名：{0}<br/>",file.FileName);
                Label1.Text += string.Format("ファイルサイズ：{0}バイト<br/>", file.ContentLength);
                Label1.Text += string.Format("コンテントタイプ：{0}<br/>", file.ContentType);

                //アップロードされたファイルを一時フォルダに保存する
                //System.IO.Path.GetTempPath()は一時フォルダを取得するメソッド
                //System.IO.Path.GetFileName()はフルパスからファイル名を取得するメソッド
                file.SaveAs(
                    System.IO.Path.GetTempPath() +
                    System.IO.Path.GetFileName(file.FileName));
            }

        }
    }
}