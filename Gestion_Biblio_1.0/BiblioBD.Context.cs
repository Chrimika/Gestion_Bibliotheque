﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gestion_Biblio_1._0
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BibliothequeBDEntities : DbContext
    {
        public BibliothequeBDEntities()
            : base("name=BibliothequeBDEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adherant> Adherants { get; set; }
        public virtual DbSet<Bibliothequaire> Bibliothequaires { get; set; }
        public virtual DbSet<Directeur> Directeurs { get; set; }
        public virtual DbSet<Livre> Livres { get; set; }
        public virtual DbSet<Rayon> Rayons { get; set; }
    }
}
