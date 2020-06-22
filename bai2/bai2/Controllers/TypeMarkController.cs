using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class TypeMarkController : Controller
    {
        // GET: TypeMark
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.type_mark.ToList());
            }
        }

        // GET: TypeMark/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.type_mark.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: TypeMark/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TypeMark/Create
        [HttpPost]
        public ActionResult Create(type_mark type_mark)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.type_mark.Add(type_mark);
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TypeMark/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.type_mark.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: TypeMark/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, type_mark type_mark)
        {
            try
            {
                // TODO: Add update logic here
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(type_mark).State = EntityState.Modified;
                    dbModel.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TypeMark/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.type_mark.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: TypeMark/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                using (DBModel dBModel = new DBModel())
                {
                    type_mark type_mark = dBModel.type_mark.Where(x => x.id == id).FirstOrDefault();
                    dBModel.type_mark.Remove(type_mark);
                    dBModel.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
