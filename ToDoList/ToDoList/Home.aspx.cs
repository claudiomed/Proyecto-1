using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoList
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["SesionUsuario"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (Session["SesionUsuario"].ToString()=="1")
                    {
                        NavCuentaStandard.Visible = true;
                    }
                    else
                    {
                        NavCuentaPro.Visible = true;
                    }
                }
                
                
            }
        }

        protected void cerrarSesionBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Session.RemoveAll();
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}