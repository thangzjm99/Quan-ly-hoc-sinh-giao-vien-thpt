using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class CourseController : Controller
    {
        // GET: Course
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {

                return View(dbModel.courses.ToList());
            }
        }

        // GET: Course/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.courses.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: Course/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Course/Create
        [HttpPost]
        public ActionResult Create(cours cours)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.courses.Add(cours);
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Course/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.courses.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Course/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, cours cours)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(cours).State = EntityState.Modified;
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

        // GET: Course/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.courses.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Course/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    cours cours = dBModel.courses.Where(x => x.id == id).FirstOrDefault();
                    dBModel.courses.Remove(cours);
                    dBModel.SaveChanges();
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
