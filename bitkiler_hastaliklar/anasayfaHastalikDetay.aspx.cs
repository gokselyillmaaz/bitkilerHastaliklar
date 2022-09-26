using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;
using System.Data.Entity.Core.Objects.DataClasses;

namespace bitkiler_hastaliklar
{
    public partial class anasayfaHastalikDetay : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["hastalikID"]);
            var p = db.hastalikBul(x);


            var sorgu = from y in db.TBL_HASTALIK
                        where
                        y.hastalikID == x
                        select y;
            
                var b = sorgu.ToList();
                Repeater2.DataSource = b;
                Repeater2.DataBind();

            var r = sorgu.ToList();
            Repeater3.DataSource = r;
            Repeater3.DataBind();

            var k = sorgu.ToList();
            Repeater4.DataSource = k;
            Repeater4.DataBind();

            var z = sorgu.ToList();
            Repeater5.DataSource = z;
            Repeater5.DataBind();

            var w = sorgu.ToList();
            Repeater6.DataSource = w;
            Repeater6.DataBind();



            var donus = p.ToList();
            Repeater1.DataSource = donus;
            Repeater1.DataBind();




        }
    }
}