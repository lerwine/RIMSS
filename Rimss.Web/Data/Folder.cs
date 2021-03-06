//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Rimss.Web.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Folder
    {
        public Folder()
        {
            this.SubFolders = new HashSet<Folder>();
            this.SourceImages = new HashSet<SourceImage>();
        }
    
        public System.Guid Id { get; set; }
        public string DisplayText { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Nullable<System.Guid> ParentId { get; set; }
        public System.Guid ApplicationId { get; set; }
        public string MetaData { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public System.Guid CreatedById { get; set; }
        public System.Guid ModifiedById { get; set; }
        public System.DateTime ModifiedOn { get; set; }
    
        public virtual Application Application { get; set; }
        public virtual IdentityCache CreatedBy { get; set; }
        public virtual IdentityCache ModifiedBy { get; set; }
        public virtual ICollection<Folder> SubFolders { get; set; }
        public virtual Folder ParentFolder { get; set; }
        public virtual ICollection<SourceImage> SourceImages { get; set; }
    }
}
