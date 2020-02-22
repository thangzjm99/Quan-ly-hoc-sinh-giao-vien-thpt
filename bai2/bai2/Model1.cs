namespace bai2
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<program> programs { get; set; }
        public virtual DbSet<staff> staffs { get; set; }
        public virtual DbSet<student> students { get; set; }
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

            modelBuilder.Entity<program>()
                .HasMany(e => e.students)
                .WithMany(e => e.programs)
                .Map(m => m.ToTable("student_program").MapLeftKey("id_program").MapRightKey("id_student"));

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
