using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Rimss.Web.Data;
using System.Data.Entity.Core.Objects;

namespace Rimss.Web.Controllers
{
    public class ApplicationsController : Controller
    {
        private RimssDbEntities db = new RimssDbEntities();

        // GET: Applications
        public ActionResult Index()
        {
            var applications = db.Applications.Include(a => a.CreatedBy).Include(a => a.ModifiedBy);
            return this.View(applications.ToList());
        }

        // GET: Applications/Details/5
        public ActionResult Details(Guid? id)
        {
            if (!id.HasValue)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Application application = db.Applications.Find(id.Value);
            if (application == null)
                return this.HttpNotFound();

            return this.View(application);
        }

        // GET: Applications/Create
        public ActionResult Create() { return this.View(); }

        // POST: Applications/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Title,Description")] Application application)
        {
            if (String.IsNullOrWhiteSpace(application.Title))
                this.ModelState.AddModelError("Title", "Title cannot be empty");
            else
                application.Title = application.Title.Trim();

            if (db.Applications.Any(a => String.Compare(a.Title, application.Title, true) == 0))
                this.ModelState.AddModelError("Title", "Another application with that title alraedy exists.");
            else if (application.Description == null)
                application.Description = "";

            if (!this.ModelState.IsValid)
                return this.View(application);

            try
            {
                GetCurrentUserIdentityCache_Result currentUser = db.GetCurrentUserIdentityCache().FirstOrDefault();

                if (currentUser == null)
                    throw new Exception("Unable to get current user from the identity cache.");

                application.Id = Guid.NewGuid();
                application.CreatedById = currentUser.Id;
                application.CreatedOn = DateTime.Now;
                application.ModifiedById = currentUser.Id;
                application.ModifiedOn = application.CreatedOn;
                db.Applications.Add(application);
                db.SaveChanges();
            }
            catch (Exception exception)
            {
                this.ModelState.AddModelError("CreatedById", exception);
            }

            if (!this.ModelState.IsValid)
                return this.View(application);

            return RedirectToAction("Index");
        }

        // GET: Applications/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Application application = db.Applications.Find(id);
            if (application == null)
            {
                return HttpNotFound();
            }
            return View(application);
        }

        // POST: Applications/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Title,Description")] Application application)
        {
            if (ModelState.IsValid)
            {
                db.Entry(application).State = EntityState.Modified;
                GetCurrentUserIdentityCache_Result currentUser = db.GetCurrentUserIdentityCache().FirstOrDefault();
                application.ModifiedById = currentUser.Id;
                application.ModifiedOn = DateTime.Now;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(application);
        }

        // GET: Applications/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (!id.HasValue)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Application application = db.Applications.Find(id.Value);
            if (application == null)
                return this.HttpNotFound();

            return this.View(application);
        }

        // POST: Applications/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Application application = db.Applications.Find(id);
            if (application == null)
                return this.HttpNotFound();
            db.Applications.Remove(application);
            db.SaveChanges();
            return this.RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }
    }
}
