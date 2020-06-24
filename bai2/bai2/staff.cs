namespace bai2
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("staff")]
    public partial class staff
    {
        public int id { get; set; }

        [StringLength(255)]
        public string name { get; set; }

        public int? gender { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthday { get; set; }

        [Column(TypeName = "text")]
        public string address { get; set; }

        [Column(TypeName = "timestamp")]
        [MaxLength(8)]
        [Timestamp]
        public byte[] created_at { get; set; }

        [Column(TypeName = "text")]
        public string image { get; set; }
    }
}
