using Rimss.Web.Models;
using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace Rimss.Web.Controllers
{
    public class ApplicationsController : Controller
    {
        private Data.RimssDbEntities db = new Data.RimssDbEntities();

        // GET: Applications
        public ActionResult Index()
        {
            return this.View(Application.GetList(db.Applications.Include(a => a.CreatedBy).Include(a => a.ModifiedBy)));
        }

        // GET: Applications/Details/5
        public ActionResult Details(Guid? id)
        {
            if (!id.HasValue)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Application application = Application.Create(db.Applications.Find(id.Value));
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
            application.Title = application.Title.Trim();

            if (db.Applications.Any(a => String.Compare(a.Title, application.Title, true) == 0))
                this.ModelState.AddModelError("Title", "Another application with that title alraedy exists.");

            if (!this.ModelState.IsValid)
                return this.View(application);

            try
            {
                IdentityCache currentUser = IdentityCache.GetCurrentUser(db);

                if (currentUser == null)
                    throw new Exception("Unable to get current user from the identity cache.");

                application.SetCreated(currentUser);
                db.Applications.Add(application.GetDataObject());
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
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Application application = Application.Create(db.Applications.Find(id));
            if (application == null)
                return this.HttpNotFound();

            return this.View(application);
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
                application.SetModified(IdentityCache.Create(db.GetCurrentUserIdentityCache().FirstOrDefault()));
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

            Application application = Application.Create(db.Applications.Find(id.Value));
            if (application == null)
                return this.HttpNotFound();

            return this.View(application);
        }

        // POST: Applications/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Data.Application application = db.Applications.Find(id);
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
