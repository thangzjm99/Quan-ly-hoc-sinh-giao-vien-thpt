namespace bai2
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class type_mark
    {
        public long id { get; set; }

        [StringLength(50)]
        public string name { get; set; }
    }
}
