//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace bitkiler_hastaliklar.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBLRecete
    {
        public int receteID { get; set; }
        public int receteHastalikID { get; set; }
        public int receteBitkiID { get; set; }
    
        public virtual TBL_BITKI TBL_BITKI { get; set; }
        public virtual TBL_HASTALIK TBL_HASTALIK { get; set; }
    }
}
