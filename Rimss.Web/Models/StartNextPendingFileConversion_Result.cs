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
    
    public partial class StartNextPendingFileConversion_Result
    {
        public System.Guid Id { get; set; }
        public System.Guid JobId { get; set; }
        public string JobStatusName { get; set; }
        public string JobStatusTitle { get; set; }
        public Nullable<int> ConversionJobStatusId { get; set; }
        public Nullable<System.DateTime> FileConversionStartedOn { get; set; }
        public Nullable<System.DateTime> FileConversionTerminatedOn { get; set; }
        public System.Guid SourceImageId { get; set; }
        public string Tag { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }
        public int FormatId { get; set; }
        public Nullable<System.Guid> ConvertedImageId { get; set; }
        public int FileConversionStatusId { get; set; }
        public string FileConversionStatusName { get; set; }
        public string FileConversionStatusTitle { get; set; }
        public string FileConversionStatusMessage { get; set; }
        public string FileConversionDetailMessage { get; set; }
        public Nullable<System.DateTime> ConversionJobCreatedOn { get; set; }
        public Nullable<System.DateTime> ConversionJobStartedOn { get; set; }
        public Nullable<System.DateTime> ConversionJobTerminatedOn { get; set; }
        public string ConversionJobStatusMessage { get; set; }
        public string ConversionJobDetailMessage { get; set; }
    }
}
