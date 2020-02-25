using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace bai2
{
    [Table("staff_program")]
    public partial class staff_program
    {
        [Key]
        public int id_staff { get; set; }

        public int id_program { get; set; }
    }
}