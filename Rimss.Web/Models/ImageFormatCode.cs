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
    
    public partial class ImageFormatCode
    {
        public ImageFormatCode()
        {
            this.ConvertedImageCodes = new HashSet<FileConversionLog>();
            this.FileConversionLogs = new HashSet<FileConversionLog>();
            this.SourceImages = new HashSet<SourceImage>();
            this.ConvertedImages = new HashSet<ConvertedImage>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Title { get; set; }
    
        public virtual ICollection<FileConversionLog> ConvertedImageCodes { get; set; }
        public virtual ICollection<FileConversionLog> FileConversionLogs { get; set; }
        public virtual ICollection<SourceImage> SourceImages { get; set; }
        public virtual ICollection<ConvertedImage> ConvertedImages { get; set; }
    }
}
