using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class hastalik_guncelle2 : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["hastalikID"]);
                var p = db.TBL_HASTALIK.Find(id);

                txtHastalikID.Text = p.hastalikID.ToString();
                txtHastalikAditr.Text = p.hastalikAdiTr.ToString();
                txtHastalikAdiLatin.Text = p.hastalikAdiLatince.ToString();
                txtHastalikGrubu.Text = p.hastalikGrubu.ToString();
                txtHastalikTanim.Text = p.hastalikTanim.ToString();
                txtHastalikAciklama.Text = p.hastalikAciklama.ToString();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["hastalikID"]);
            var hastaliklar = db.TBL_HASTALIK.Find(id);
            hastaliklar.hastalikAdiTr = txtHastalikAditr.Text;
            hastaliklar.hastalikAdiLatince = txtHastalikAdiLatin.Text;
            hastaliklar.hastalikGrubu = txtHastalikGrubu.Text;
            hastaliklar.hastalikTanim = txtHastalikTanim.Text;
            hastaliklar.hastalikAciklama = txtHastalikAciklama.Text;
            db.SaveChanges();
            Response.Redirect("hastalik_guncelle.aspx");
        }
    }
}