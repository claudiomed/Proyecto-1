using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace ToDoList
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            var mensajeResultado = string.Empty;
            try
            {
                
                var mail = email.Text.ToLower();
                var password = pass.Text;


                USUARIOS_TB usuario = new USUARIOS_TB();
                usuario.Email = mail;
                usuario.Pass = password;

                USUARIOS_TB user = BL.BL.consultarUsuarios().Where(u => u.Email.ToLower() == usuario.Email).FirstOrDefault();

                if (user!=null)
                {
                    if (user.Pass!=password)
                    {
                        mensajeResultado = "Contraseña incorrecta";
                    }
                    else
                    {
                        mensajeResultado = "Ingreso exitóso";
                        Session["SesionUsuario"] = user.Tipo_Usuario;
                        Session["correoUsuario"] = user.Email;
                        
                    }
                }
                else
                {
                    mensajeResultado = "El usuario ingresado no existe";
                }

                

            }
            catch (Exception ex)
            {

                throw ex;
            }

            ClientScript.RegisterStartupScript(this.GetType(), null, "resultadoLogin('" + mensajeResultado + "')", true);
        }
    }
}