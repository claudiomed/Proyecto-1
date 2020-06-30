using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoList
{
    public partial class Informacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SesionUsuario"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["SesionUsuario"].ToString() != "2")
                {
                    Response.Redirect("ForbiddenError.aspx");
                }
            }
            
        }
    }
}