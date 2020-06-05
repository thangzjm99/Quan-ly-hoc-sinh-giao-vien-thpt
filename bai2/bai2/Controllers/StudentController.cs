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
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            using (DBModel dbModel = new DBModel())
            {
                
                return View(dbModel.students.ToList());
            }
            
        }

        // GET: Student/Details/5
        public ActionResult Details(int id)
        {
            using(DBModel dbModel = new DBModel())
            {
                return View(dbModel.students.Where(x => x.id == id).FirstOrDefault());
            }
            
        }

        // GET: Student/Create
        public ActionResult Create()
        {
            using (DBModel dbModel = new DBModel())
            {
                List<program> programList = dbModel.programs.ToList();
                ViewBag.programList = programList;
                return View();
            }
        }

        // POST: Student/Create
        [HttpPost]
        public ActionResult Create(student student, HttpPostedFileBase uploadImage)
        {
            if(Request.Form["uploadImage"] != null)
            {
                string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
                string extension = Path.GetExtension(uploadImage.FileName);
                string filePath = Path.Combine(Server.MapPath("~/Images"), fileName);
                filePath = filePath + extension;
                uploadImage.SaveAs(filePath);
                student.image = fileName + extension;
            
            }
            

            using (DBModel dbModel = new DBModel())
            {
                
                dbModel.students.Add(student); 
                dbModel.SaveChanges();
                string[] program = Request.Form["programs[]"].Split(',');
                

                for (int i = 0; i < program.Length; i++)
                {
                    var student_program = new student_program();
                    student_program.id_student = student.id;
                    student_program.id_program = Convert.ToInt32(program[i]);
                    dbModel.student_program.Add(student_program);
                    dbModel.SaveChanges();
                }
            }

            return RedirectToAction("Index");
            
        }

        // GET: Student/Edit/5
        public ActionResult Edit(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.students.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Student/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, student student, HttpPostedFileBase uploadImage)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    if (uploadImage != null && uploadImage.ContentLength > 0)
                    {
                        if (student.image != null)
                        {
                            string filePathOld = Path.Combine(Server.MapPath("~/Images"), student.image);
                            System.IO.File.Delete(filePathOld);
                        }

                        string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
                        string extension = Path.GetExtension(uploadImage.FileName);
                        string filePathNew = Path.Combine(Server.MapPath("~/Images"), fileName);
                        filePathNew = filePathNew + extension;
                        uploadImage.SaveAs(filePathNew);
                        student.image = fileName + extension;
                    }
                    dbModel.Entry(student).State = EntityState.Modified;
                    if (uploadImage == null)
                    {
                        dbModel.Entry(student).Property(m => m.image).IsModified = false;
                    }
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

        // GET: Student/Delete/5
        public ActionResult Delete(int id)
        {
            using (DBModel dbModel = new DBModel())
            {
                return View(dbModel.students.Where(x => x.id == id).FirstOrDefault());
            }
        }

        // POST: Student/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DBModel dBModel = new DBModel())
                {
                    student student = dBModel.students.Where(x => x.id == id).FirstOrDefault();
                    if(student.image != null)
                        {
                            string filePath = Path.Combine(Server.MapPath("~/Images"), student.image);
                            System.IO.File.Delete(filePath);
                        }

                    dBModel.students.Remove(student);
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
