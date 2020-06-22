using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BL
{
    public class BL
    {
        #region MÉTODOS DE CREAR, MDIFICAR, ELIMINAR

        /// <summary>
        /// Crea, modifica o elimina un usuario
        /// </summary>
        /// <param name="usuario"></param>
        /// <param name="accion"></param>
        /// <returns></returns>
        public static bool CRUD_USUARIOS(USUARIOS_TB usuario, string accion)
        {
            try
            {
                List<SqlCommand> lstSentencias = new List<SqlCommand>();//Lista de sentencias a ejecutar
                AD objAcceso = new AD();

                SQLSentencias sentencia = new SQLSentencias();
                //Se crea la peticion
                sentencia.Peticion = "EXEC CRUD_USUARIOS_SP @Usuario_ID, @Email, @Pass, @Tipo_Usuario, @Accion";
                //Se agregan los parametros correspondientes
                SqlParameter Usuario_ID_P = new SqlParameter();
                Usuario_ID_P.Value = usuario.Usuario_ID;
                Usuario_ID_P.SqlDbType = System.Data.SqlDbType.Int;
                Usuario_ID_P.ParameterName = "@Usuario_ID";

                SqlParameter Email_P = new SqlParameter();
                Email_P.Value = usuario.Email;
                Email_P.SqlDbType = System.Data.SqlDbType.VarChar;
                Email_P.ParameterName = "@Email";

                SqlParameter Pass_P = new SqlParameter();
                Pass_P.Value = usuario.Pass;
                Pass_P.SqlDbType = System.Data.SqlDbType.VarChar;
                Pass_P.ParameterName = "@Pass";

                SqlParameter Tipo_Usuario_P = new SqlParameter();
                Tipo_Usuario_P.Value = usuario.Tipo_Usuario;
                Tipo_Usuario_P.SqlDbType = System.Data.SqlDbType.TinyInt;
                Tipo_Usuario_P.ParameterName = "@Tipo_Usuario";

                SqlParameter Accion_P = new SqlParameter();
                Accion_P.Value = accion;
                Accion_P.SqlDbType = System.Data.SqlDbType.Char;
                Accion_P.ParameterName = "@Accion";

                sentencia.lstParametros.Add(Usuario_ID_P);
                sentencia.lstParametros.Add(Email_P);
                sentencia.lstParametros.Add(Pass_P);
                sentencia.lstParametros.Add(Tipo_Usuario_P);
                sentencia.lstParametros.Add(Accion_P);

                return objAcceso.EjecutarSentencias(sentencia);


            }
            catch (Exception e)
            {

                throw e;
            }

           
        }

        /// <summary>
        /// Crea, modifica y elimina cuentas de usuario
        /// </summary>
        /// <param name="cuenta"></param>
        /// <param name="accion"></param>
        /// <returns></returns>
        public static bool CRUD_CUENTAS(CUENTAS_TB cuenta, string accion)
        {
            try
            {
                List<SqlCommand> lstSentencias = new List<SqlCommand>();//Lista de sentencias a ejecutar
                AD objAcceso = new AD();

                SQLSentencias sentencia = new SQLSentencias();
                //Se crea la peticion
                sentencia.Peticion = "EXEC CRUD_CUENTAS_SP @Cuenta_ID, @Cuenta_Usuario_ID, @Tipo_Cuenta, @Numero_Tarjeta, @Accion";
                //Se agregan los parametros correspondientes
                SqlParameter Cuenta_ID_P = new SqlParameter();
                Cuenta_ID_P.Value = cuenta.Cuenta_ID;
                Cuenta_ID_P.SqlDbType = System.Data.SqlDbType.Int;
                Cuenta_ID_P.ParameterName = "@Cuenta_ID";

                SqlParameter Cuenta_Usuario_ID_P = new SqlParameter();
                Cuenta_Usuario_ID_P.Value = cuenta.Cuenta_Usuario_ID;
                Cuenta_Usuario_ID_P.SqlDbType = System.Data.SqlDbType.Int;
                Cuenta_Usuario_ID_P.ParameterName = "@Cuenta_Usuario_ID";

                SqlParameter Tipo_Cuenta_P = new SqlParameter();
                Tipo_Cuenta_P.Value = cuenta.Tipo_cuenta;
                Tipo_Cuenta_P.SqlDbType = System.Data.SqlDbType.Char;
                Tipo_Cuenta_P.ParameterName = "@Tipo_Cuenta";

                SqlParameter Numero_Tarjeta_P = new SqlParameter();
                Numero_Tarjeta_P.Value = cuenta.Numero_Tarjeta;
                Numero_Tarjeta_P.SqlDbType = System.Data.SqlDbType.VarChar;
                Numero_Tarjeta_P.ParameterName = "@Numero_Tarjeta";

                SqlParameter Accion_P = new SqlParameter();
                Accion_P.Value = accion;
                Accion_P.SqlDbType = System.Data.SqlDbType.Char;
                Accion_P.ParameterName = "@Accion";

                sentencia.lstParametros.Add(Cuenta_ID_P);
                sentencia.lstParametros.Add(Cuenta_Usuario_ID_P);
                sentencia.lstParametros.Add(Tipo_Cuenta_P);
                sentencia.lstParametros.Add(Numero_Tarjeta_P);
                sentencia.lstParametros.Add(Accion_P);

                return objAcceso.EjecutarSentencias(sentencia);


            }
            catch (Exception e)
            {

                throw e;
            }


        }


        /// <summary>
        /// Crea, modifica y elimina notas 
        /// </summary>
        /// <param name="nota"></param>
        /// <param name="accion"></param>
        /// <returns></returns>
        public static bool CRUD_NOTAS(NOTAS_TB nota, string accion)
        {
            try
            {
                List<SqlCommand> lstSentencias = new List<SqlCommand>();//Lista de sentencias a ejecutar
                AD objAcceso = new AD();

                SQLSentencias sentencia = new SQLSentencias();
                //Se crea la peticion
                sentencia.Peticion = "EXEC CRUD_NOTAS_SP @Nota_ID, @Notas_Cuenta_ID, @Titulo, @Cuerpo, @Fecha_Creacion, @Estado, @Accion";
                //Se agregan los parametros correspondientes
                SqlParameter Nota_ID_P = new SqlParameter();
                Nota_ID_P.Value = nota.Nota_ID;
                Nota_ID_P.SqlDbType = System.Data.SqlDbType.Int;
                Nota_ID_P.ParameterName = "@Nota_ID";

                SqlParameter Notas_Cuenta_ID_P = new SqlParameter();
                Notas_Cuenta_ID_P.Value = nota.Notas_Cuenta_ID;
                Notas_Cuenta_ID_P.SqlDbType = System.Data.SqlDbType.Int;
                Notas_Cuenta_ID_P.ParameterName = "@Notas_Cuenta_ID";

                SqlParameter Titulo_P = new SqlParameter();
                Titulo_P.Value = nota.Titulo;
                Titulo_P.SqlDbType = System.Data.SqlDbType.VarChar;
                Titulo_P.ParameterName = "@Titulo";

                SqlParameter Cuerpo_P = new SqlParameter();
                Cuerpo_P.Value = nota.Cuerpo;
                Cuerpo_P.SqlDbType = System.Data.SqlDbType.VarChar;
                Cuerpo_P.ParameterName = "@Cuerpo";

                SqlParameter Fecha_Creacion_P = new SqlParameter();
                Fecha_Creacion_P.Value = nota.Fecha_Creacion;
                Fecha_Creacion_P.SqlDbType = System.Data.SqlDbType.DateTime;
                Fecha_Creacion_P.ParameterName = "@Fecha_Creacion";

                SqlParameter Estado_P = new SqlParameter();
                Estado_P.Value = nota.Estado;
                Estado_P.SqlDbType = System.Data.SqlDbType.Char;
                Estado_P.ParameterName = "@Estado";

                SqlParameter Accion_P = new SqlParameter();
                Accion_P.Value = accion;
                Accion_P.SqlDbType = System.Data.SqlDbType.Char;
                Accion_P.ParameterName = "@Accion";

                sentencia.lstParametros.Add(Nota_ID_P);
                sentencia.lstParametros.Add(Notas_Cuenta_ID_P);
                sentencia.lstParametros.Add(Titulo_P);
                sentencia.lstParametros.Add(Cuerpo_P);
                sentencia.lstParametros.Add(Fecha_Creacion_P);
                sentencia.lstParametros.Add(Estado_P);
                sentencia.lstParametros.Add(Accion_P);

                return objAcceso.EjecutarSentencias(sentencia);


            }
            catch (Exception e)
            {

                throw e;
            }
        }




        #endregion

    }
}
