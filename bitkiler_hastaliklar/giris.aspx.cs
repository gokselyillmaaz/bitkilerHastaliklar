
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XAct.Library.Settings;
using bitkiler_hastaliklar.Entity;
namespace bitkiler_hastaliklar
{
    public partial class giris : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_KULLANICI
                        where
                        x.kullaniciMail == txtKullanici.Text && x.kullaniciSifre == txtSifre.Text &&
                        x.kullaniciYoneticiMi == 0
                        select x;

            var sorgu1 = from x in db.TBL_KULLANICI
                        where
                        x.kullaniciMail == txtKullanici.Text && x.kullaniciSifre == txtSifre.Text &&
                        x.kullaniciYoneticiMi == 1
                         select x;

            if (sorgu.Any())
            {
                Response.Redirect("uye.aspx");
            }
            else if(sorgu1.Any())
            {
                Response.Redirect("yonetici.aspx");
            }
            else
            {
                Response.Write("Kullanıcı adı ya da şifre hatalı");
            }
        }
    }
}