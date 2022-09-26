using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class receteSil2 : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["receteID"]);
            var p = db.TBLRecete.Find(x);
            db.TBLRecete.Remove(p);
            db.SaveChanges();
            Response.Redirect("receteSil.aspx");
        }
    }
}