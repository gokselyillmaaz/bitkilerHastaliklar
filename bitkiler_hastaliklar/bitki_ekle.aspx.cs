using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class bitki_ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
            TBL_BITKI t = new TBL_BITKI();

            t.bitkiAdiTr = txtBitkiAdiTr.Text;
            t.bitkiAdiLatince = txtBitkiAdiLatince.Text;
            t.bitkiFoto = txtBitkiFoto.Text;
            t.bitkiAciklama = txtBitkiAciklama.Text;

            db.TBL_BITKI.Add(t);
            db.SaveChanges();

            txtBitkiAdiTr.Text = "";
            txtBitkiAdiLatince.Text = "";
            txtBitkiFoto.Text = "";
            txtBitkiAciklama.Text = "";
        }
    }
}