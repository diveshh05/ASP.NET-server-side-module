using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCNS30869ms.Tutorial.week5
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ltlResults.Text = Billing.Street + "<br />" + Billing.City + "<br />" + Billing.state + "<br />" + Billing.PostalCode;

            ltlResults.Text += "<br />" + Shipping.Street + "<br />" + Shipping.City + "<br />" + Shipping.state + "<br />" + Shipping.PostalCode;
        }
    }
}