using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;
namespace bitkiler_hastaliklar
{
    public partial class uyeol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUye_Click(object sender, EventArgs e)
        {
            hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
            TBL_KULLANICI t = new TBL_KULLANICI();
            t.kullaniciAdi = txtKullaniciAdi.Text;
            t.kullaniciSoyadi = txtKullaniciSoyadi.Text;
            t.kullaniciSifre = txtKullaniciSifre.Text;
            t.kullaniciMail = txtKullaniciMail.Text;
            t.kullaniciYoneticiMi = 0;

            db.TBL_KULLANICI.Add(t);
            db.SaveChanges();
            txtKullaniciAdi.Text = "";
            txtKullaniciSoyadi.Text = "";
            txtKullaniciSifre.Text = "";
            txtKullaniciMail.Text = "";

            Response.Redirect("giris.aspx");


        }

    }
}