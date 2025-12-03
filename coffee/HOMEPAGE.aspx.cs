
using System;
using System.Web.UI;

namespace coffee
{
    public partial class HOMEPAGE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void imgEspresso_Click(object sender, ImageClickEventArgs e)
        {
            // redirect to espresso gallery
            Response.Redirect("Gallery.aspx?type=espresso");
        }

        protected void imgCappuccino_Click(object sender, ImageClickEventArgs e)
        {
            // redirect to cappuccino gallery
            Response.Redirect("Gallery.aspx?type=cappuccino");
        }

        // later you can add more, e.g.:
        // protected void imgLatte_Click(object sender, ImageClickEventArgs e) { ... }

        protected void imgLatte_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=latte");
        }

        protected void imgMocha_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=mocha");
        }

        protected void imgAmericano_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=americano");
        }

        protected void imgIcecoffee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=icecoffee");
        }

        protected void imgDrip_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=drip");
        }

        protected void imgFrappe_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gallery.aspx?type=frappe");
        }
    }
}
