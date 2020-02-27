using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class StaffController : Controller
    {
        // GET: Staff
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.staffs.ToList());
            }
        }

        // GET: Staff/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.staffs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: Staff/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Staff/Create
        [HttpPost]
        public ActionResult Create(staff staff, HttpPostedFileBase uploadImage)
        {
            string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
            string extension = Path.GetExtension(uploadImage.FileName);
            string filePath = Path.Combine(Server.MapPath("~/Images"), fileName);
            filePath = filePath + extension;
            uploadImage.SaveAs(filePath);
            staff.image = fileName + extension;


            using (DBModel dbModel = new DBModel())
            {

                dbModel.staffs.Add(staff);
                dbModel.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        // GET: Staff/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.staffs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Staff/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, staff staff)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(staff).State = EntityState.Modified;
                    dbModel.SaveChanges();
                }
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Staff/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.staffs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Staff/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    staff staff = dBModel.staffs.Where(x => x.id == id).FirstOrDefault();
                    dBModel.staffs.Remove(staff);
                    dBModel.SaveChanges();

                    if (staff.image != null)
                    {
                        string filePath = Path.Combine(Server.MapPath("~/Images"), staff.image);
                        System.IO.File.Delete(filePath);
                    }
                }
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
