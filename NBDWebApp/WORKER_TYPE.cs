//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NBDWebApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class WORKER_TYPE
    {
        public WORKER_TYPE()
        {
            this.LABOUR_SUMMARY = new HashSet<LABOUR_SUMMARY>();
            this.WORKERs = new HashSet<WORKER>();
        }
    
        public int ID { get; set; }
        public string wrkTypeDesc { get; set; }
        public Nullable<decimal> wrkTypePrice { get; set; }
        public Nullable<decimal> wrkTypeCost { get; set; }
    
        public virtual ICollection<LABOUR_SUMMARY> LABOUR_SUMMARY { get; set; }
        public virtual ICollection<WORKER> WORKERs { get; set; }
    }
}
