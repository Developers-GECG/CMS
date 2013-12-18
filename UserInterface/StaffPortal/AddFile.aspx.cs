using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddFile : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.FileUpload FileUploadControl;
        protected System.Web.UI.WebControls.Label StatusLabel;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Upload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
       
    }
}