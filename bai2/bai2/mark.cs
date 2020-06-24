namespace bai2
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("mark")]
    public partial class mark
    {
        public int id { get; set; }

        public int? student_id { get; set; }

        public int? type_mark_id { get; set; }

        public int? course_id { get; set; }

        [Column("mark")]
        public double? mark1 { get; set; }
    }
}
