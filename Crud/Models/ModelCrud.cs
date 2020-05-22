namespace Crud.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelCrud : DbContext
    {
        public ModelCrud()
            : base("name=ModelCrud")
        {
        }

        public virtual DbSet<Personas> Personas { get; set; }
        public virtual DbSet<TiposDocumento> TiposDocumento { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Personas>()
                .Property(e => e.NumDocumento)
                .IsUnicode(false);

            modelBuilder.Entity<Personas>()
                .Property(e => e.NomPersona)
                .IsUnicode(false);

            modelBuilder.Entity<Personas>()
                .Property(e => e.DireccionPersona)
                .IsUnicode(false);

            modelBuilder.Entity<Personas>()
                .Property(e => e.EmailPersona)
                .IsUnicode(false);

            modelBuilder.Entity<TiposDocumento>()
                .Property(e => e.NomTipoDocumento)
                .IsUnicode(false);

            modelBuilder.Entity<TiposDocumento>()
                .Property(e => e.SiglaTipoDocumento)
                .IsUnicode(false);

            modelBuilder.Entity<TiposDocumento>()
                .HasMany(e => e.Personas)
                .WithRequired(e => e.TiposDocumento)
                .WillCascadeOnDelete(false);
        }
    }
}
