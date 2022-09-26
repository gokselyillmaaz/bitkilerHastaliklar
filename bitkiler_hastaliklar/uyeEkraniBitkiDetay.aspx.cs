using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class uyeEkraniBitkiDetay : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["bitkiID"]);
            var p = db.bitkiBul(x);

            var sorgu = from y in db.TBL_BITKI
                        where
                        y.bitkiID == x
                        select y;

            var b = sorgu.ToList();
            Repeater2.DataSource = b;
            Repeater2.DataBind();

            var k = sorgu.ToList();
            Repeater5.DataSource = k;
            Repeater5.DataBind();

            var c = sorgu.ToList();
            Repeater3.DataSource = c;
            Repeater3.DataBind();


            var d = sorgu.ToList();
            Repeater4.DataSource = d;
            Repeater4.DataBind();





            var donus = p.ToList();
            Repeater1.DataSource = donus;
            Repeater1.DataBind();
        }
    }
}