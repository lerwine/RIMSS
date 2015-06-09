using Rimss.Common.Attributes;

namespace Rimss.Common
{
    public enum JobStatusCodes : byte
    {
        [DisplayText("Waiting")]
        Waiting = 0,

        [DisplayText("In Progress")]
        InProgress = 1,

        [DisplayText("Cancelling")]
        Cancelling = 2,

        [DisplayText("Canceled")]
        Canceled = 3,

        [DisplayText("Success")]
        Success = 4,

        [DisplayText("Faulted")]
        Faulted = 5
    }
}
