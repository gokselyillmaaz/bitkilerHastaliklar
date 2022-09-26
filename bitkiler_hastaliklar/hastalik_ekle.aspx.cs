using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class hastalik_ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
            TBL_HASTALIK t = new TBL_HASTALIK();

            t.hastalikAdiTr = txtHastalikAditr.Text;
            t.hastalikAdiLatince = txtHastalikAdiLatin.Text;
            t.hastalikGrubu = txtHastalikGrubu.Text;
            t.hastalikTanim = txtHastalikTanim.Text;
            t.hastalikAciklama = txtHastalikAciklama.Text;

            db.TBL_HASTALIK.Add(t);
            db.SaveChanges();

            txtHastalikAditr.Text = "";
            txtHastalikAdiLatin.Text = "";
            txtHastalikGrubu.Text = "";
            txtHastalikTanim.Text = "";
            txtHastalikAciklama.Text = "";
        }
    }
}