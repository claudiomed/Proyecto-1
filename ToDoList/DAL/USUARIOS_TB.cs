//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class USUARIOS_TB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIOS_TB()
        {
            this.CUENTAS_TB = new HashSet<CUENTAS_TB>();
        }
    
        public int Usuario_ID { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public byte Tipo_Usuario { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CUENTAS_TB> CUENTAS_TB { get; set; }
        public virtual TIPOS_USUARIO_TB TIPOS_USUARIO_TB { get; set; }
    }
}
