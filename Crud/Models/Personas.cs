namespace Crud.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Personas
    {
        [Key]
        public int IdPersona { get; set; }

        public int IdTipoDocumento { get; set; }

        [Required]
        [StringLength(20)]
        public string NumDocumento { get; set; }

        [Required]
        [StringLength(200)]
        public string NomPersona { get; set; }

        [Required]
        [StringLength(200)]
        public string DireccionPersona { get; set; }

        [StringLength(100)]
        public string EmailPersona { get; set; }

        public virtual TiposDocumento TiposDocumento { get; set; }
    }
}
