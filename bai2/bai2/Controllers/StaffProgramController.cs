using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class StaffProgramController : Controller
    {
        // GET: StaffProgram
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                List<staff> staffList = dbModel.staffs.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.staffList = staffList;
                ViewBag.programList = programList;
                return View(dbModel.staff_program.ToList());
            }
        }

        // GET: StaffProgram/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<staff> staffList = dbModel.staffs.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.studentList = staffList;
                ViewBag.programList = programList;
                return View(dbModel.staff_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: StaffProgram/Create
        public ActionResult Create()
        {
            using (DBModel dbModel = new DBModel())
            {

                List<staff> staffs = dbModel.staffs.ToList();
                List<program> programs = dbModel.programs.ToList();
                SelectList staffList = new SelectList(staffs, "id", "name");
                SelectList programList = new SelectList(programs, "id", "name");
                ViewBag.staffList = staffList;
                ViewBag.programList = programList;
                return View();
            }
        }

        // POST: StaffProgram/Create
        [HttpPost]
        public ActionResult Create(staff_program staff_program)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.staff_program.Add(staff_program);
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: StaffProgram/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<staff> staffs = dbModel.staffs.ToList();
                List<program> programs = dbModel.programs.ToList();
                SelectList staffList = new SelectList(staffs, "id", "name");
                SelectList programList = new SelectList(programs, "id", "name");
                ViewBag.staffList = staffList;
                ViewBag.programList = programList;
                return View(dbModel.staff_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: StaffProgram/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, staff_program staff_program)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(staff_program).State = EntityState.Modified;
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: StaffProgram/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<staff> staffList = dbModel.staffs.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.staffList = staffList;
                ViewBag.programList = programList;
                return View(dbModel.staff_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: StaffProgram/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    staff_program staff_program = dBModel.staff_program.Where(x => x.id == id).FirstOrDefault();
                    dBModel.staff_program.Remove(staff_program);
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
