using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FSWDFinalProject.DATA.EF;
using Microsoft.AspNet.Identity;

namespace FSWDFinalProject.UI.MVC.Controllers
{
    public class PhotosController : Controller
    {
        private ReservationsEntities db = new ReservationsEntities();

        // GET: Photos
        public ActionResult Index()
        {
            if (User.IsInRole("Admin"))
            {
                return View(db.Photos.ToList());
            }
            else
            {
                string thisUsersID = User.Identity.GetUserId();
                var userEntry = db.Photos.Where(o => o.Pet.OwnerID == thisUsersID);

                return View(userEntry);
            }
        }

        // GET: Photos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Photo photo = db.Photos.Find(id);
            if (photo == null)
            {
                return HttpNotFound();
            }
            return View(photo);
        }
        [Authorize(Roles ="Admin")]
        // GET: Photos/Create
        public ActionResult Create()
        {
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name");
            return View();
        }

        // POST: Photos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PhotoID,PetID,ImageName,Description")] Photo photo,
            HttpPostedFileBase coverImage)
        {
            if (ModelState.IsValid)
            {
                string imageName = "noImage.png";

                if (coverImage != null)
                {
                    imageName = coverImage.FileName;

                    string ext = imageName.Substring(imageName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        imageName=Guid.NewGuid() + ext;
                        coverImage.SaveAs(Server.MapPath("~/Content/Images/" + imageName));
                    }
                    else
                    {
                        imageName = "noImage.png";
                    }
                }

                photo.ImageName = imageName;
                db.Photos.Add(photo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", photo.PetID);
            return View(photo);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: Photos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Photo photo = db.Photos.Find(id);
            if (photo == null)
            {
                return HttpNotFound();
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", photo.PetID);
            return View(photo);
        }

        // POST: Photos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PhotoID,PetID,ImageName,Description")] Photo photo, HttpPostedFileBase coverImage)
        {
            if (ModelState.IsValid)
            {

                if (coverImage != null)
                {
                    string imageName = coverImage.FileName;

                    string ext = imageName.Substring(imageName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        coverImage.SaveAs(Server.MapPath("~/Content/Images" + imageName));

                        photo.ImageName = imageName;
                    }

                }
                db.Entry(photo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", photo.PetID);
            return View(photo);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: Photos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Photo photo = db.Photos.Find(id);
            if (photo == null)
            {
                return HttpNotFound();
            }
            return View(photo);
        }

        // POST: Photos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Photo photo = db.Photos.Find(id);
            db.Photos.Remove(photo);
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
