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
    
    public partial class IdentityCache
    {
        public IdentityCache()
        {
            this.CreatedApplications = new HashSet<Application>();
            this.ModifiedApplications = new HashSet<Application>();
            this.CreatedFolders = new HashSet<Folder>();
            this.ModifiedFolders = new HashSet<Folder>();
            this.CreatedSourceImages = new HashSet<SourceImage>();
            this.ModifiedSourceImages = new HashSet<SourceImage>();
            this.CreatedConversionJobLogs = new HashSet<ConversionJobLog>();
            this.StartedConversionJobLogs = new HashSet<ConversionJobLog>();
            this.TerminatedConversionJobLogs = new HashSet<ConversionJobLog>();
            this.CreatedConvertedImages = new HashSet<ConvertedImage>();
            this.ModifiedConvertedImages = new HashSet<ConvertedImage>();
        }
    
        public System.Guid Id { get; set; }
        public byte[] SID { get; set; }
        public string LoginName { get; set; }
        public string DisplayName { get; set; }
        public string EmailAddress { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public string CreatedByLoginName { get; set; }
        public byte[] CreatedBySID { get; set; }
        public System.DateTime VerifiedOn { get; set; }
        public System.DateTime ModifiedOn { get; set; }
        public string ModifiedByLoginName { get; set; }
        public byte[] ModifiedBySID { get; set; }
    
        public virtual ICollection<Application> CreatedApplications { get; set; }
        public virtual ICollection<Application> ModifiedApplications { get; set; }
        public virtual ICollection<Folder> CreatedFolders { get; set; }
        public virtual ICollection<Folder> ModifiedFolders { get; set; }
        public virtual ICollection<SourceImage> CreatedSourceImages { get; set; }
        public virtual ICollection<SourceImage> ModifiedSourceImages { get; set; }
        public virtual ICollection<ConversionJobLog> CreatedConversionJobLogs { get; set; }
        public virtual ICollection<ConversionJobLog> StartedConversionJobLogs { get; set; }
        public virtual ICollection<ConversionJobLog> TerminatedConversionJobLogs { get; set; }
        public virtual ICollection<ConvertedImage> CreatedConvertedImages { get; set; }
        public virtual ICollection<ConvertedImage> ModifiedConvertedImages { get; set; }
    }
}