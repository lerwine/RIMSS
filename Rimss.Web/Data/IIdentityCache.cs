using System;
namespace Rimss.Web.Data
{
    public interface IIdentityCache
    {
        string CreatedByLoginName { get; set; }
        byte[] CreatedBySID { get; set; }
        DateTime CreatedOn { get; set; }
        string DisplayName { get; set; }
        string EmailAddress { get; set; }
        Guid Id { get; set; }
        string LoginName { get; set; }
        string ModifiedByLoginName { get; set; }
        byte[] ModifiedBySID { get; set; }
        DateTime ModifiedOn { get; set; }
        byte[] SID { get; set; }
        DateTime VerifiedOn { get; set; }
    }
}
