using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class kullaniciGuncelle2 : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["kullaniciID"]);
                var p = db.TBL_KULLANICI.Find(id);

                txtKullaniciID.Text = p.kullaniciID.ToString();
                txtKullaniciAdi.Text = p.kullaniciAdi.ToString();
                txtKullaniciSoyadi.Text = p.kullaniciSoyadi.ToString();
                txtKullaniciMail.Text = p.kullaniciMail.ToString();
                txtKullaniciSifre.Text = p.kullaniciSifre.ToString();
                txtkullaniciYoneticiMi.Text = p.kullaniciYoneticiMi.ToString();
            }
        }

       

        protected void btnGuncelle_Click1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["kullaniciID"]);
            var kullanicilar = db.TBL_KULLANICI.Find(id);
            kullanicilar.kullaniciAdi = txtKullaniciAdi.Text;
            kullanicilar.kullaniciSoyadi = txtKullaniciSoyadi.Text;
            kullanicilar.kullaniciMail = txtKullaniciMail.Text;
            kullanicilar.kullaniciSifre = txtKullaniciSifre.Text;
            kullanicilar.kullaniciYoneticiMi = Convert.ToInt32(txtkullaniciYoneticiMi.SelectedValue);

            db.SaveChanges();
            Response.Redirect("kullaniciGuncelle.aspx");
        }
    }
}