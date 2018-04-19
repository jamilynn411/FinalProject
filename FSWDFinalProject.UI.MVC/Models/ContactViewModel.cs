using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FSWDFinalProject.UI.MVC.Models
{
    public class ContactViewModel
    {

        [Required(ErrorMessage = "* Name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "* Email is required")]
        [EmailAddress(ErrorMessage = " * Enter a valid email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "* Subject is required")]
        public string Subject { get; set; }

        [Required(ErrorMessage = "* Message is required")]
        [StringLength(140, ErrorMessage = "* Message must be Twitter-sized")]
        public string Message { get; set; }
    }
}