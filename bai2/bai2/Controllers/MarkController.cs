using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class MarkController : Controller
    {
        // GET: Mark
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                ViewBag.studentList = studentList;
                List<type_mark> typeMarkList = dbModel.type_mark.ToList();
                ViewBag.typeMarkList = typeMarkList;
                List<cours> courseList = dbModel.courses.ToList();
                ViewBag.courseList = courseList;
                return View(dbModel.marks.ToList());
            }
        }

        // GET: Mark/Details/5
        public ActionResult Details(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                ViewBag.studentList = studentList;
                List<type_mark> typeMarkList = dbModel.type_mark.ToList();
                ViewBag.typeMarkList = typeMarkList;
                List<cours> courseList = dbModel.courses.ToList();
                ViewBag.courseList = courseList;
                return View(dbModel.marks.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // GET: Mark/Create
        public ActionResult Create()
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> students = dbModel.students.ToList();
                List<type_mark> type_marks = dbModel.type_mark.ToList();
                List<cours> courses = dbModel.courses.ToList();
                SelectList studentList = new SelectList(students, "id", "name");
                SelectList typeMarkList = new SelectList(type_marks, "id", "name");
                SelectList courseList = new SelectList(courses, "id", "name");
                ViewBag.studentList = studentList;
                ViewBag.typeMarkList = typeMarkList;
                ViewBag.courseList = courseList;
                return View();
            }
        }

        // POST: Mark/Create
        [HttpPost]
        public ActionResult Create(mark mark)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.marks.Add(mark);
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Mark/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> students = dbModel.students.ToList();
                List<type_mark> type_marks = dbModel.type_mark.ToList();
                List<cours> courses = dbModel.courses.ToList();
                SelectList studentList = new SelectList(students, "id", "name");
                SelectList typeMarkList = new SelectList(type_marks, "id", "name");
                SelectList courseList = new SelectList(courses, "id", "name");
                ViewBag.studentList = studentList;
                ViewBag.typeMarkList = typeMarkList;
                ViewBag.courseList = courseList;
                return View(dbModel.marks.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Mark/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, mark mark)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(mark).State = EntityState.Modified;
                    dbModel.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Mark/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                List<student> studentList = dbModel.students.ToList();
                ViewBag.studentList = studentList;
                List<type_mark> typeMarkList = dbModel.type_mark.ToList();
                ViewBag.typeMarkList = typeMarkList;
                List<cours> courseList = dbModel.courses.ToList();
                ViewBag.courseList = courseList;
                return View(dbModel.marks.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Mark/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    mark mark = dBModel.marks.Where(x => x.id == id).FirstOrDefault();
                    dBModel.marks.Remove(mark);
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
