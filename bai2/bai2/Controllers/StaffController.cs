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
            using (DBModel dbModel = new DBModel())
            { 
                List<program> programList = dbModel.programs.ToList();
                ViewBag.programList = programList;
                return View();
            }
                
        }

        // POST: Staff/Create
        [HttpPost]
        public ActionResult Create(staff staff, HttpPostedFileBase uploadImage)
        {
            if (Request.Form["uploadImage"] != null)
            {
                string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
                string extension = Path.GetExtension(uploadImage.FileName);
                string filePath = Path.Combine(Server.MapPath("~/Images"), fileName);
                filePath = filePath + extension;
                uploadImage.SaveAs(filePath);
                staff.image = fileName + extension;

            }


            using (DBModel dbModel = new DBModel())
            {

                dbModel.staffs.Add(staff);
                dbModel.SaveChanges();

                string[] program = Request.Form["programs[]"].Split(',');


                for (int i = 0; i < program.Length; i++)
                {
                    var staff_program = new staff_program();
                    staff_program.id_staff = staff.id;
                    staff_program.id_program = Convert.ToInt32(program[i]);
                    dbModel.staff_program.Add(staff_program);
                    dbModel.SaveChanges();
                }
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
        public ActionResult Edit(int id, staff staff, HttpPostedFileBase uploadImage)
        {
            try
            {
                using (DBModel dbModel = new DBModel())
                {
                    if (uploadImage != null && uploadImage.ContentLength > 0)
                    {
                        if (staff.image != null)
                        {
                            string filePathOld = Path.Combine(Server.MapPath("~/Images"), staff.image);
                            System.IO.File.Delete(filePathOld);
                        }

                        string fileName = Path.GetFileNameWithoutExtension(uploadImage.FileName);
                        string extension = Path.GetExtension(uploadImage.FileName);
                        string filePathNew = Path.Combine(Server.MapPath("~/Images"), fileName);
                        filePathNew = filePathNew + extension;
                        uploadImage.SaveAs(filePathNew);
                        staff.image = fileName + extension;
                    }

                    dbModel.Entry(staff).State = EntityState.Modified;
                    if (uploadImage == null)
                    {
                        dbModel.Entry(staff).Property(m => m.image).IsModified = false;
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
