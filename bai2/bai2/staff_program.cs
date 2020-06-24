namespace bai2
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class staff_program
    {
        public int id { get; set; }

        public int id_staff { get; set; }

        public int id_program { get; set; }
    }
}
