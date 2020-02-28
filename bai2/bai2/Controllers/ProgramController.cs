using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class ProgramController : Controller
    {
        // GET: Program
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.programs.ToList());
            }
        }

        // GET: Program/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.programs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: Program/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Program/Create
        [HttpPost]
        public ActionResult Create(program program)
        {
            using (DBModel dbModel = new DBModel())
            {
                dbModel.programs.Add(program);
                dbModel.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        // GET: Program/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.programs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Program/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, program program)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(program).State = EntityState.Modified;
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

        // GET: Program/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.programs.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Program/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    program program = dBModel.programs.Where(x => x.id == id).FirstOrDefault();
                    dBModel.programs.Remove(program);
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
