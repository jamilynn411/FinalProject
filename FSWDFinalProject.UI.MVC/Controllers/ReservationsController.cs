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
    public class ReservationsController : Controller
    {
        private ReservationsEntities db = new ReservationsEntities();

        // GET: Reservations
        public ActionResult Index()
        {
            if (User.IsInRole("Admin") ||(User.IsInRole("Photographer")))
            {
                return View(db.Reservations.ToList());
            }
            else
            {
                string thisUsersID = User.Identity.GetUserId();
                var userEntry = db.Reservations.Where(o => o.Pet.OwnerID == thisUsersID);
                    
                return View(userEntry.ToList());
            }

            
        }

        // GET: Reservations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = db.Reservations.Find(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: Reservations/Create
        public ActionResult Create()
        {
            if (User.IsInRole("Admin"))
            {
                ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name");

            }
            else
            {
                string thisUsersID = User.Identity.GetUserId();
                ViewBag.PetID = new SelectList(db.Pets.Where(a => a.OwnerID == thisUsersID), "PetID", "Name");
            }

            ViewBag.StudioID = new SelectList(db.StudioLocations, "StudioID", "StudioName");
            return View();
        }

        // POST: Reservations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ReservationID,StudioID,PetID,SessionDate,PhotographerID")]
        Reservation reservation)
        {

            //current user for the scope of this Action
            string thisUsersID = User.Identity.GetUserId();

            if (ModelState.IsValid)
            {
                //how many sessions for the date requested at the location requested?
                int countDates = db.Reservations.Where(x => x.SessionDate == reservation.SessionDate && 
                x.StudioID == reservation.StudioID).Count();

                
                //var totalReservations = selectedReservation.
                if (User.IsInRole("Admin"))
                {
                    db.Reservations.Add(reservation);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

                if (User.IsInRole("Customer"))
                {
                    StudioLocation s = db.StudioLocations.Where(sl => sl.StudioID == 
                    reservation.StudioID).FirstOrDefault();

                    if (countDates < s.SessionLimit)
                    {
                        db.Reservations.Add(reservation);
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ViewBag.Message = "The Studio has reached it's session limit for the selected date. Please choose a new date, a new studio or contact your local admin at 1-785-250-7505.";
                    }
                }
            }
            if (User.IsInRole("Admin"))
            {
                ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", reservation.PetID);

            }

            ViewBag.PetID = new SelectList(db.Pets.Where(a => a.OwnerID == thisUsersID), "PetID", "Name", reservation.PetID);
            ViewBag.StudioID = new SelectList(db.StudioLocations, "StudioID", "StudioName", reservation.StudioID);
            return View(reservation);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: Reservations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = db.Reservations.Find(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", reservation.PetID);
            ViewBag.StudioID = new SelectList(db.StudioLocations, "StudioID", "StudioName", reservation.StudioID);
            return View(reservation);
        }

        // POST: Reservations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ReservationID,StudioID,PetID,SessionDate,PhotographerID")] Reservation reservation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(reservation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "Name", reservation.PetID);
            ViewBag.StudioID = new SelectList(db.StudioLocations, "StudioID", "StudioName", reservation.StudioID);
            return View(reservation);
        }
        [Authorize(Roles = "Admin, Customer")]
        // GET: Reservations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = db.Reservations.Find(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }

        // POST: Reservations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Reservation reservation = db.Reservations.Find(id);
            db.Reservations.Remove(reservation);
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
