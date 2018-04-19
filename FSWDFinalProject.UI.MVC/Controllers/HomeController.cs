using FSWDFinalProject.UI.MVC.Models;
using System;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;

namespace FSWDFinalProject.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

       
        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Gallery()

        {
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(ContactViewModel contact)
        {
            string body = string.Format($"Name: {contact.Name}<br>\n" +
              $"Email: {contact.Email}<br>Subject: {contact.Subject}" + $"Message: <br>{contact.Message}");
            MailMessage msg = new MailMessage("no-reply@jlynncodes.com",
              //From address- this must be an email on your hosting site
              "jami.deghand@outlook.com",
              //To- where the email will be delivered 
              contact.Subject + " - " + DateTime.Now,
              body
              );

            //Extra configuration
            msg.Priority = MailPriority.High;
            msg.IsBodyHtml = true;
            //msg.CC.Add("someoneelsemail@gmail.com");
            //msg.Bcc.Add('hiddenemail@gmail.com');

            //Create and configure the SMTP Client
            SmtpClient client = new SmtpClient("mail.jlynncodes.com");
            client.Credentials = new NetworkCredential("no-reply@jlynncodes.com",
                "Abc123!!!");

            //Attempt to send the email 
            using (client)
            {
                try
                {
                    if (ModelState.IsValid)
                    {
                        client.Send(msg);
                    }

                    else
                    {
                        return View();
                    }

                }
                catch
                {
                    ViewBag.ErrorMessage = "There was a problem. Please" + "try again.";

                    return View();
                }

            }
            //Return the user to a ContactConfirmationView

            return View("ContactConfirmation", contact);
        }

    }
}

