using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;
 
namespace bitkiler_hastaliklar
{
    public partial class yoneticiEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
            TBL_KULLANICI t = new TBL_KULLANICI();
            t.kullaniciAdi = txtYoneticiAdi.Text;
            t.kullaniciSoyadi = txtYoneticiSoyadi.Text;
            t.kullaniciMail = txtYoneticiMail.Text;
            t.kullaniciSifre = txtYoneticiSifre.Text;
            t.kullaniciYoneticiMi = 1;

            db.TBL_KULLANICI.Add(t);
            db.SaveChanges();

            txtYoneticiAdi.Text = "";
            txtYoneticiSoyadi.Text = "";
            txtYoneticiMail.Text = "";
            txtYoneticiSifre.Text = "";

        }
    }
}