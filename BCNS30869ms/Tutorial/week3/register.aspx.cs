using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCNS30869ms.Tutorial.week3
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rvdob.MinimumValue = DateTime.Now.AddYears(-45).ToShortDateString();
            rvdob.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
            rvdob.Type = ValidationDataType.Date;

            if (!Page.IsPostBack)  // check if the page is loaded for the first time
            {
                txtfname.Focus();  // set focus to the first name text box

                string physicalPath = Server.MapPath("~/app_data/country.xml");
                DataSet ds = new DataSet();
                ds.ReadXml(physicalPath); // read the XML file into the DataSet

                ddlcountry.DataSource = ds; // set the DataSet as the data source for the DropDownList
                ddlcountry.DataTextField = "countryName"; // set the field to display in the DropDownList
                ddlcountry.DataValueField = "countryId"; // set the field to use as the value for the DropDownList
                ddlcountry.DataBind(); // bind the data to the DropDownList


                ListItem lidefefault = new ListItem("Choose Country", "-1"); // create a default ListItem

                ddlcountry.Items.Insert(0, lidefefault); // add a default item to the DropDownList
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "You have successfully registered, pls check your email to activate your account."; 
            lblmsg.ForeColor = System.Drawing.Color.Green;


            if (Page.IsValid) // check if the page is valid
            {
                Response.Redirect("~/default.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
        }

        protected void txtafavmovies_TextChanged(object sender, EventArgs e)
        {
            int count = txtafavmovies.Text.Length; // get the length of the text in the TextBox
            notif.InnerText = count.ToString(); // set the inner text of the span to the count
        }

        protected void chk1agreement_CheckedChanged(object sender, EventArgs e)
        {
            if (chk1agreement.Checked) { 
                imgsmiley.Visible = true;
                imgsmiley.ImageUrl = "~/images/smiley.jpg";
            }
            else
            {
                imgsmiley.Visible = false;
                imgsmiley.ImageUrl = "~/images/sad.jpg";
            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmsg.Text = "You have chosen " + ddlcountry.SelectedItem.Text;
        }
    }
}