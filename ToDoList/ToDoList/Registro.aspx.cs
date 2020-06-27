﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using DAL;

namespace ToDoList
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            var correo = Email.Text;
            var password = Password1.Text;
            var numeroTarjeta = string.Empty;

            var mensaje = string.Empty;

            try
            {
                //Se busca si el usuario ya existe en la base de datos

                USUARIOS_TB usuarioExistente = BL.BL.consultarUsuarios().Where(u=>u.Email==correo).FirstOrDefault();
                if (usuarioExistente!=null)
                {
                    mensaje = "Un usuario con el correo "+correo+" ya ha sido creado.";
                }

                var resultadoRegistro = BL.BL.registrarse(correo, password, numeroTarjeta);
                if (resultadoRegistro)
                {
                    mensaje = "Registro exitóso!";
                }
                else
                {
                    mensaje = "La cuenta NO pudo ser creada!";
                }
                
                //ClientScript.RegisterStartupScript(this.GetType(), null, "mostrarMensaje('" + mensaje + "', '" + palabra.ToLower() + "')", true);
                ClientScript.RegisterStartupScript(this.GetType(), null, "resultadoCreacionCuenta("+mensaje+")", true);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}