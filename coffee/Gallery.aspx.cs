using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace coffee
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request.QueryString["type"];

            if (type == "espresso")
            {
               espressoRepeater.DataSource = new List<string>
               {
                    "images/eshort.jpg",
                    "images/edouble.jpg",
                    "images/eshort macchiato.jpg",
                    "images/elong macchiato.jpg",
                    "images/eristretto.jpg",
                    "images/edoppio.jpg",
                    "images/ecafe latte.jpeg",
                    "images/epiccolo latte.jpg",
                    "images/elungo.jpg"
               };
                espressoRepeater.DataBind();
            }
        }
    }
}







