using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AD
    {
        #region Atributos
        private string cadenaconexion = Properties.Settings.Default.Conexion;
        private SqlConnection objconexion;
        #endregion

        #region Constructor
        public AD()
        {
            try
            {
                objconexion = new SqlConnection(cadenaconexion);
                this.ABRIR();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }
        }
        #endregion

        #region MÉTODOS

       

        #region PRIVADOS

        private void ABRIR()
        {
            if (objconexion.State == System.Data.ConnectionState.Closed)
                objconexion.Open();
        }

        private void CERRAR()
        {
            if (objconexion.State == System.Data.ConnectionState.Open)
                objconexion.Close();
        }
        #endregion


        #region Publicos
        /// <summary>
        /// 
        /// </summary>
        /// <param name="P_Peticion"></param>
        /// <returns></returns>
        public bool EjecutarSentencias(SQLSentencias P_Peticion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                //ASigna los valores del QUERY a ejecutar en SQL
                cmd.Connection = objconexion; //ASigna conexion
                cmd.CommandType = System.Data.CommandType.Text; //ASigna el tipo
                cmd.CommandText = P_Peticion.Peticion; //ASigna peticion recibida

                if (P_Peticion.lstParametros.Count > 0) //Consulta si tiene parametros
                    cmd.Parameters.AddRange(P_Peticion.lstParametros.ToArray()); //Los asigna

                //Ejecutar la sentencia
                this.ABRIR();
                cmd.ExecuteNonQuery(); //Ejecuta en BD la peticion configurada               
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }
        }
        #endregion


        #endregion

    }
}
