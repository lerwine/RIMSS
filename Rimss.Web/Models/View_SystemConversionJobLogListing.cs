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
    using System.Collections.Generic;
    
    public partial class View_SystemConversionJobLogListing
    {
        public System.Guid Id { get; set; }
        public System.Guid ApplicationId { get; set; }
        public string ApplicationTitle { get; set; }
        public int ReasonId { get; set; }
        public string ReasonName { get; set; }
        public string ReasonTitle { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public System.Guid CreatedById { get; set; }
        public string CreatedByLoginName { get; set; }
        public string CreatedByDisplayName { get; set; }
        public Nullable<System.DateTime> StartedOn { get; set; }
        public Nullable<System.Guid> StartedById { get; set; }
        public string StartedByLoginName { get; set; }
        public string StartedByDisplayName { get; set; }
        public Nullable<System.DateTime> TerminatedOn { get; set; }
        public Nullable<System.Guid> TerminatedById { get; set; }
        public string TerminatedByLoginName { get; set; }
        public string TerminatedByDisplayName { get; set; }
        public int StatusId { get; set; }
        public string StatusName { get; set; }
        public string StatusTitle { get; set; }
        public string StatusMessage { get; set; }
        public Nullable<int> TotalFileConversionCount { get; set; }
        public Nullable<int> ActiveFileConversionCount { get; set; }
    }
}
