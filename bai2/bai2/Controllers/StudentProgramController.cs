using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class StudentProgramController : Controller
    {
        // GET: StudentProgram
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.studentList = studentList;
                ViewBag.programList = programList;
                return View(dbModel.student_program.ToList());
            }
        }

        // GET: StudentProgram/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.studentList = studentList;
                ViewBag.programList = programList;
                return View(dbModel.student_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: StudentProgram/Create
        public ActionResult Create()
        {
            using (DBModel dbModel = new DBModel())
            {

                List<student> students = dbModel.students.ToList();
                List<program> programs = dbModel.programs.ToList();
                SelectList studentList = new SelectList(students, "id", "name");
                SelectList programList = new SelectList(programs, "id", "name");
                ViewBag.studentList = studentList;
                ViewBag.programList = programList;
                return View();
            }
              
        }

        // POST: StudentProgram/Create
        [HttpPost]
        public ActionResult Create(student_program student_program)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.student_program.Add(student_program);
                    dbModel.SaveChanges();
                }
                    // TODO: Add insert logic here

                    return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: StudentProgram/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> students = dbModel.students.ToList();
                List<program> programs = dbModel.programs.ToList();
                SelectList studentList = new SelectList(students, "id", "name");
                SelectList programList = new SelectList(programs, "id", "name");
                ViewBag.studentList = studentList;
                ViewBag.programList = programList;
                return View(dbModel.student_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: StudentProgram/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, student_program student_program)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(student_program).State = EntityState.Modified;
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

        // GET: StudentProgram/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                List<program> programList = dbModel.programs.ToList();
                ViewBag.studentList = studentList;
                ViewBag.programList = programList;
                return View(dbModel.student_program.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: StudentProgram/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    student_program student_program = dBModel.student_program.Where(x => x.id == id).FirstOrDefault();
                    dBModel.student_program.Remove(student_program);
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
