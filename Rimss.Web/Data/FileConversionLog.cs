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
    
    public partial class FileConversionLog
    {
        public System.Guid Id { get; set; }
        public System.Guid JobId { get; set; }
        public Nullable<System.DateTime> StartedOn { get; set; }
        public Nullable<System.DateTime> TerminatedOn { get; set; }
        public System.Guid SourceImageId { get; set; }
        public string Tag { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }
        public int FormatId { get; set; }
        public Nullable<System.Guid> ConvertedImageId { get; set; }
        public int StatusId { get; set; }
        public string StatusMessage { get; set; }
        public string DetailMessage { get; set; }
    
        public virtual ConversionJobLog ConversionJobLog { get; set; }
        public virtual ImageFormatCode ConvertedImageFormatCode { get; set; }
        public virtual ImageFormatCode FileConversionImageFormatCode { get; set; }
        public virtual JobStatusCode JobStatusCode { get; set; }
        public virtual SourceImage SourceImage { get; set; }
        public virtual ConvertedImage ConvertedImage { get; set; }
    }
}
