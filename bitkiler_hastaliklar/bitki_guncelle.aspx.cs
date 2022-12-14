using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class bitki_guncelle : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.TBL_BITKI.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }

        protected void btnAra_Click1(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_BITKI
                        where
                        x.bitkiAdiTr.ToLower().Contains(txtBitki.Text.ToLower()) || x.bitkiAdiLatince.ToLower().Contains(txtBitki.Text.ToLower())

                        select x;
            if (sorgu.Any())
            {
                var donus = sorgu.ToList();
                Repeater1.DataSource = donus;
                Repeater1.DataBind();
            }
        }
    }
}