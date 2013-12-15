using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using CMS.Logic.Database;

namespace CMS.Logic.VirtualClassroom
{
    public class Video
    {
        private DBConnect dbc;
        public DataTable poplateVirtualClass()
        {
            String qry = "Select id,title from CMS.virtualclass_master";
            dbc = new DBConnect("server=localhost;User Id=root;password=root;database=cms;");
            return dbc.executeSelectQueryWithDT(qry);
        }
    }
}