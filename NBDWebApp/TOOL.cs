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
    
    public partial class TOOL
    {
        public TOOL()
        {
            this.PROD_TOOL = new HashSet<PROD_TOOL>();
        }
    
        public int ID { get; set; }
        public string toolDesc { get; set; }
    
        public virtual ICollection<PROD_TOOL> PROD_TOOL { get; set; }
    }
}