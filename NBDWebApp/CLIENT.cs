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
    
    public partial class CLIENT
    {
        public CLIENT()
        {
            this.PROJECTs = new HashSet<PROJECT>();
        }
    
        public int ID { get; set; }
        public string cliName { get; set; }
        public string cliAddress { get; set; }
        public Nullable<int> cityID { get; set; }
        public string cliProvince { get; set; }
        public string cliPCode { get; set; }
        public string cliPhone { get; set; }
        public string cliConFName { get; set; }
        public string cliConLName { get; set; }
        public string cliConPosition { get; set; }
    
        public virtual CITY CITY { get; set; }
        public virtual ICollection<PROJECT> PROJECTs { get; set; }
    }
}
