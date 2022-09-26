using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class bitki_guncelle2 : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["bitkiID"]);
                var p = db.TBL_BITKI.Find(id);

                txtBitkiID.Text = p.bitkiID.ToString();
                txtBitkiAdiTr.Text = p.bitkiAdiTr.ToString();
                txtBitkiAdiLatince.Text = p.bitkiAdiLatince.ToString();
                txtBitkiFoto.Text = p.bitkiFoto.ToString();
                txtBitkiAciklama.Text = p.bitkiAciklama.ToString();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["bitkiID"]);
            var bitkiler = db.TBL_BITKI.Find(id);
            bitkiler.bitkiAdiTr = txtBitkiAdiTr.Text;
            bitkiler.bitkiAdiLatince = txtBitkiAdiLatince.Text;
            bitkiler.bitkiFoto = txtBitkiFoto.Text;
            bitkiler.bitkiAciklama = txtBitkiAciklama.Text;
            db.SaveChanges();
            Response.Redirect("bitki_guncelle.aspx");
        }
    }
}