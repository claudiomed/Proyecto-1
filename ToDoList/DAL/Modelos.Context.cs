﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ToDoListEntities : DbContext
    {
        public ToDoListEntities()
            : base("name=ToDoListEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CUENTAS_TB> CUENTAS_TB { get; set; }
        public virtual DbSet<NOTAS_TB> NOTAS_TB { get; set; }
        public virtual DbSet<TIPOS_USUARIO_TB> TIPOS_USUARIO_TB { get; set; }
        public virtual DbSet<USUARIOS_TB> USUARIOS_TB { get; set; }
    }
}
