using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bitkiler_hastaliklar.Entity;

namespace bitkiler_hastaliklar
{
    public partial class receteEkle : System.Web.UI.Page
    {
        hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {


            var degerler2 = db.TBL_HASTALIK.ToList();
            Repeater2.DataSource = degerler2;
            Repeater2.DataBind();

            var degerler = db.TBL_BITKI.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();

            
        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            hastaliklarBitkilerEntities db = new hastaliklarBitkilerEntities();

            var sorgu = from x in db.TBLRecete
                        where
                        x.receteBitkiID.ToString() == txtBitkiID.Text.ToString() &&
                        x.receteHastalikID.ToString() == txtHastalikID.Text.ToString()
                        select x;

            var sorgu1 = from x in db.TBL_BITKI
                        where
                        x.bitkiID.ToString() == txtBitkiID.Text.ToString()
                        select x;

            var sorgu2 = from x in db.TBL_HASTALIK
                         where
                         x.hastalikID.ToString() == txtHastalikID.Text.ToString()
                         select x;


            if (sorgu.Any())
            {
                Response.Write("Bu eşleşme daha önce gerçekleşmiş.");
                
            }
            else
            {
                if (sorgu1.Any() && sorgu2.Any())
                {
                    TBLRecete t = new TBLRecete();
                    t.receteBitkiID = Convert.ToInt32(txtBitkiID.Text);
                    t.receteHastalikID = Convert.ToInt32(txtHastalikID.Text);

                    db.TBLRecete.Add(t);
                    db.SaveChanges();

                    txtBitkiID.Text = "";
                    txtHastalikID.Text = "";

                    Response.Redirect("receteEkle.aspx");
                }
                else
                {
                    
                    Response.Write("Hastalık ID ya da Bitki ID veritabanında bulunmuyor.");
                }
            }
        }
    }
}