using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FSWDFinalProject.DATA.EF;

namespace FSWDFinalProject.UI.MVC.Controllers
{
    public class StudioLocationsController : Controller
    {
        private ReservationsEntities db = new ReservationsEntities();

        // GET: StudioLocations
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View(db.StudioLocations.ToList());
        }

        // GET: StudioLocations/Details/5
        [AllowAnonymous]
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudioLocation studioLocation = db.StudioLocations.Find(id);
            if (studioLocation == null)
            {
                return HttpNotFound();
            }
            return View(studioLocation);
        }
        [Authorize(Roles = "Admin")]
        // GET: StudioLocations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: StudioLocations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "StudioID,StudioName,Address,City,State,ZipCode,SessionLimit")] StudioLocation studioLocation)
        {
            if (ModelState.IsValid)
            {
                db.StudioLocations.Add(studioLocation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(studioLocation);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: StudioLocations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudioLocation studioLocation = db.StudioLocations.Find(id);
            if (studioLocation == null)
            {
                return HttpNotFound();
            }
            return View(studioLocation);
        }

        // POST: StudioLocations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "StudioID,StudioName,Address,City,State,ZipCode,SessionLimit")] StudioLocation studioLocation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studioLocation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(studioLocation);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: StudioLocations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudioLocation studioLocation = db.StudioLocations.Find(id);
            if (studioLocation == null)
            {
                return HttpNotFound();
            }
            return View(studioLocation);
        }

        // POST: StudioLocations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            StudioLocation studioLocation = db.StudioLocations.Find(id);
            db.StudioLocations.Remove(studioLocation);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
