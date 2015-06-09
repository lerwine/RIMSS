using System;
using System.Collections.Generic;
using Rimss.Common.Attributes;

namespace Rimss.Common
{
    /// <summary>
    /// Enumerated list of job types.
    /// </summary>
    public enum JobReasonCodes : byte
    {
        [DisplayText("New image conversion parameters applied.")]
        NewConversionParameters = 0,
        
        [DisplayText("Source image changed.")]
        SourceImageChanged = 1,

        [DisplayText("Database Refresh / Repair.")]
        DatabaseRefresh = 2
    }
}
