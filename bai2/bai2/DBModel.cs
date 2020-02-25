namespace bai2
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBModel : DbContext
    {
        public DBModel()
            : base("name=DBModel")
        {
        }

        public virtual DbSet<program> programs { get; set; }
        public virtual DbSet<staff> staffs { get; set; }
        public virtual DbSet<student> students { get; set; }

        public virtual DbSet<student_program> student_program { get; set; }
        public virtual DbSet<staff_program> staff_program { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<program>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<program>()
                .Property(e => e.days)
                .IsUnicode(false);

            modelBuilder.Entity<program>()
                .Property(e => e.created_at)
                .IsFixedLength();

            

            modelBuilder.Entity<staff>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<staff>()
                .Property(e => e.address)
                .IsUnicode(false);

            modelBuilder.Entity<staff>()
                .Property(e => e.created_at)
                .IsFixedLength();

            modelBuilder.Entity<staff>()
                .Property(e => e.image)
                .IsUnicode(false);

            modelBuilder.Entity<student>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<student>()
                .Property(e => e.address)
                .IsUnicode(false);

            modelBuilder.Entity<student>()
                .Property(e => e.created_at)
                .IsFixedLength();

            modelBuilder.Entity<student>()
                .Property(e => e.image)
                .IsUnicode(false);
        }
    }
}
