using System;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Principal;

namespace Rimss.Web.Models
{
    public class IdentityCache
    {
        private Data.IIdentityCache _identityCache = null;

        [Display(Name = "Id", Description = "Identity Cache Item Unique Identifier")]
        public Guid Id { get { return this._identityCache.Id; } }

        [Display(Name = "Security Identifier", Description = "Identity Cache Item Security Identifier")]
        public byte[] SID { get { return this._identityCache.SID; } }

        [Display(Name = "Login Name", Description = "Identity Login Name")]
        public string LoginName { get { return this._identityCache.LoginName; } }

        [Display(Name = "Display Name", Description = "Identity Display Name")]
        [StringLength(256)]
        [Required(ErrorMessage = "Display name is required", AllowEmptyStrings = true)]
        public string DisplayName { get { return this._identityCache.DisplayName; } }

        [Display(Name = "Display Name", Description = "Identity Display Name")]
        public string DisplayText
        {
            get
            {
                if (String.IsNullOrWhiteSpace(this.DisplayName))
                    return this.LoginName;

                return this.DisplayName;
            }
        }

        [Display(Name = "Email Address", Description = "Identity Email Address")]
        [StringLength(1024)]
        public string EmailAddress
        {
            get { return this._identityCache.EmailAddress; }
            set { this._identityCache.EmailAddress = value; }
        }

        public IdentityCache() { }

        public IdentityCache(Data.IdentityCache identityCache)
        {
            this._identityCache = identityCache ?? new Data.IdentityCache();
        }

        public IdentityCache(Data.GetCurrentUserIdentityCache_Result identityCache)
        {
            this._identityCache = identityCache ?? new Data.GetCurrentUserIdentityCache_Result();
        }

        public Data.IdentityCache GetDataObject()
        {
            if (this._identityCache == null)
                return null;

            if (this._identityCache is Data.IdentityCache)
                return this._identityCache as Data.IdentityCache;

            this._identityCache = new Data.IdentityCache
            {
                Id = this._identityCache.Id,
                DisplayName = this._identityCache.DisplayName,
                SID = this._identityCache.SID,
                LoginName = this._identityCache.LoginName,
                EmailAddress = this._identityCache.EmailAddress,
                VerifiedOn = this._identityCache.VerifiedOn,
                CreatedOn = this._identityCache.CreatedOn,
                CreatedBySID = this._identityCache.CreatedBySID,
                CreatedByLoginName = this._identityCache.CreatedByLoginName,
                ModifiedOn = this._identityCache.ModifiedOn,
                ModifiedBySID = this._identityCache.ModifiedBySID,
                ModifiedByLoginName = this._identityCache.ModifiedByLoginName
            };

            return this._identityCache as Data.IdentityCache;
        }

        public static IdentityCache GetCurrentUser()
        {
            using (Data.RimssDbEntities db = new Data.RimssDbEntities())
                return IdentityCache.GetCurrentUser(db);
        }

        public static IdentityCache GetCurrentUser(Data.RimssDbEntities db)
        {
            return IdentityCache.Create(db.GetCurrentUserIdentityCache().FirstOrDefault());
        }

        public static IdentityCache Create(Data.GetCurrentUserIdentityCache_Result identityCache)
        {
            if (identityCache == null)
                return null;

            return new IdentityCache(identityCache);
        }

        public static IdentityCache Create(Data.IdentityCache identityCache)
        {
            if (identityCache == null)
                return null;

            return new IdentityCache(identityCache);
        }
    }
}