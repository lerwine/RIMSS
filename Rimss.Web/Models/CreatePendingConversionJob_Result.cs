//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Rimss.Web.Models
{
    using System;
    
    public partial class CreatePendingConversionJob_Result
    {
        public System.Guid Id { get; set; }
        public System.Guid ApplicationId { get; set; }
        public int ReasonId { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public System.Guid CreatedById { get; set; }
        public Nullable<System.DateTime> StartedOn { get; set; }
        public Nullable<System.Guid> StartedById { get; set; }
        public Nullable<System.DateTime> TerminatedOn { get; set; }
        public Nullable<System.Guid> TerminatedById { get; set; }
        public int StatusId { get; set; }
        public string StatusMessage { get; set; }
        public string DetailMessage { get; set; }
    }
}