using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace Rimss.Web.Models
{
    public class Application
    {
        private Data.Application _application;

        [Display(Name = "Id", Description = "Application Registration Unique Identifier")]
        public Guid Id { get { return this._application.Id; } }

        [Display(Name = "Title", Description = "Application Registration Title")]
        [Required(ErrorMessage = "Title is required", AllowEmptyStrings = false)]
        [StringLength(255)]
        [RegularExpression(@"\S", ErrorMessage = "Title cannot be empty.")]
        public string Title
        {
            get { return this._application.Title; }
            set { this._application.Title = value ?? ""; }
        }

        [Display(Name = "Description", Description = "Description of Application Registration")]
        public string Description
        {
            get { return this._application.Description; }
            set { this._application.Description = value ?? ""; }
        }

        [Display(Name = "Created On", Description = "Date when Application Registration was created")]
        public DateTime CreatedOn { get { return this._application.CreatedOn; } }

        [Display(Name = "Created By Id", Description = "Unique Id of creator identity")]
        public Guid CreatedById { get { return this._application.CreatedById; } }

        public IdentityCache CreatedBy { get; private set; }

        [Display(Name = "Created By", Description = "Identity of Creator")]
        public string CreatedByDisplayText
        {
            get
            {
                if (this._application.CreatedBy == null)
                    return this._application.CreatedById.ToString("B");

                return this.CreatedBy.DisplayText;
            }
        }

        [Display(Name = "Modified On", Description = "Date when Application Registration was last modified")]
        public DateTime ModifiedOn { get { return this._application.CreatedOn; } }

        [Display(Name = "Modified By Id", Description = "Unique Id of modifier identity")]
        public Guid ModifiedById { get { return this._application.ModifiedById; } }

        public IdentityCache ModifiedBy { get; private set; }

        [Display(Name = "Modified By", Description = "Identity of Modifier")]
        public string ModifiedByDisplayText
        {
            get
            {
                if (this.ModifiedBy == null)
                    return this._application.ModifiedById.ToString("B");

                return this.ModifiedBy.DisplayText;
            }
        }

        public Application() : this(null) { }

        public Application(Data.Application application)
        {
            this._application = application ?? new Data.Application();
            this.CreatedBy = IdentityCache.Create(this._application.CreatedBy);
            this.ModifiedBy = IdentityCache.Create(this._application.ModifiedBy);
        }

        public static List<Application> GetList(IEnumerable<Data.Application> collection)
        {
            if (collection == null)
                return null;

            return collection.Select(a => new Application(a)).ToList();
        }

        public void SetCreated(IdentityCache currentUser)
        {
            if (currentUser == null)
                throw new ArgumentNullException("currentUser");

            this._application.Id = Guid.NewGuid();
            this.CreatedBy = currentUser;
            this._application.CreatedById = currentUser.Id;
            this._application.CreatedOn = DateTime.Now;
            this.ModifiedBy = currentUser;
            this._application.ModifiedById = currentUser.Id;
            this._application.ModifiedOn = this._application.CreatedOn;
        }

        public void SetModified(IdentityCache currentUser)
        {
            if (currentUser == null)
                throw new ArgumentNullException("currentUser");

            this.ModifiedBy = currentUser;
            this._application.ModifiedById = currentUser.Id;
            this._application.ModifiedOn = DateTime.Now;
        }

        public Data.Application GetDataObject() { return this._application; }

        public static Application Create(Data.Application application)
        {
            if (application == null)
                return null;

            return new Application(application);
        }
    }
}