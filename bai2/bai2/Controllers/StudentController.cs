using System;
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
            return View();
        }

        // POST: Student/Create
        [HttpPost]
        public ActionResult Create(student student, HttpPostedFileBase uploadImage)
        {
           
            string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
            string extension = Path.GetExtension(uploadImage.FileName);
            string filePath = Path.Combine(Server.MapPath("~/Images"), fileName);
            filePath = filePath + extension;
            uploadImage.SaveAs(filePath);
            student.image = "~/Images/"+fileName + extension;
            

            using (DBModel dbModel = new DBModel())
            {
                
                dbModel.students.Add(student);
                dbModel.SaveChanges();
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
        public ActionResult Edit(int id, student student)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    dbModel.Entry(student).State = EntityState.Modified;
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
                    dBModel.students.Remove(student);
                    dBModel.SaveChanges();

                    if(student.image != null)
                    {
                        string filePath = Path.Combine(Server.MapPath("~/Images"), student.image);
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
