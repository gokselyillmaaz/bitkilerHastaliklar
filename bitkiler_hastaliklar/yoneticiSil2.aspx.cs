using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;
namespace bitkiler_hastaliklar
{
    public partial class yoneticiSil2 : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32( Request.QueryString["kullaniciID"]);
            var p = db.TBL_KULLANICI.Find(x);
            db.TBL_KULLANICI.Remove(p);
            db.SaveChanges();
            Response.Redirect("yoneticiSil1.aspx");
        }
    }
}