using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCNS30869ms.Tutorial.week5
{
    public partial class addressForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Title
        {
            get { return ltlTitle.Text; }
            set { ltlTitle.Text = value; }
        }

        public string Street
        {
            get { return txtStreet.Text; }
            set { txtStreet.Text = value; }
        }

        public string City
        {
            get { return txtCity.Text; }
            set { txtCity.Text = value; }
        }

        public string PostalCode
        {
            get { return txtPostalCode.Text; }
            set { txtPostalCode.Text = value; }
        }

        public string state
        {
            get { return txtState.Text; }
            set { txtState.Text = value; }
        }

    }
}