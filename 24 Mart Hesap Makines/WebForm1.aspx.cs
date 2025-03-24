using System;
using System.Data;
using System.Web.UI;

namespace HesapMakinesi
{
    public partial class Default : Page
    {
        protected void Btn_Click(object sender, EventArgs e)
        {
            txt_metin.Text += ((System.Web.UI.WebControls.Button)sender).Text;
        }

        protected void BtnSil_Click(object sender, EventArgs e)
        {
            txt_metin.Text = "";
        }

        protected void BtnEsittir_Click(object sender, EventArgs e)
        {
            try
            {
                string ifade = txt_metin.Text;
                ifade = ifade.Replace("÷", "/").Replace("×", "*");

                DataTable dt = new DataTable();
                var sonuc = dt.Compute(ifade, "");
                txt_metin.Text = sonuc.ToString();
            }
            catch
            {
                txt_metin.Text = "Hata!";
            }
        }
    }
}
