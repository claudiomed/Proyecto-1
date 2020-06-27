using System;
using System.Collections.Generic;
using System.Data;
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

        /// <summary>
        /// Devuelve la lista de tipos de usuarios
        /// </summary>
        /// <param name="P_Peticion"></param>
        /// <returns></returns>
        public List<TIPOS_USUARIO_TB> Consultar_Tipos_Usuarios(SQLSentencias P_Peticion)
        {
            List<TIPOS_USUARIO_TB> Lst_Resultados = new List<TIPOS_USUARIO_TB>(); //Esta es la variable local que retornara valores
            DataTable dt = new DataTable(); //Variable contenedora del resultado en BD - Temporal

            try
            {
                SqlCommand cmd = new SqlCommand(); //Instancia de SQL Command, que permite configurar comando a ejecutar en BD

                //ASigna los valores del QUERY a ejecutar en SQL
                cmd.Connection = objconexion; //ASigna conexion
                cmd.CommandType = System.Data.CommandType.Text; //ASigna el tipo
                cmd.CommandText = P_Peticion.Peticion; //ASigna peticion recibida

                if (P_Peticion.lstParametros.Count > 0) //Consulta si tiene parametros
                    cmd.Parameters.AddRange(P_Peticion.lstParametros.ToArray()); //Los asigna

                SqlDataAdapter objCaptura = new SqlDataAdapter(cmd); //Aqui se crea instancia para reliazar consultas en BD
                objCaptura.Fill(dt); //Aqui se ejecuta la consulta en BD y se almacena en memoria la respuesta

                if (dt.Rows.Count > 0) //Valida si la consulta devolvio resultados
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        TIPOS_USUARIO_TB t = new TIPOS_USUARIO_TB(); //Instancia temporal

                        t.Tipos_Usuario_ID = Byte.Parse(item.ItemArray[0].ToString());
                        t.Descripcion= item.ItemArray[1].ToString();

                        Lst_Resultados.Add(t);
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }

            return Lst_Resultados;
        }

        /// <summary>
        /// Devuelve lista de usuarios
        /// </summary>
        /// <param name="P_Peticion"></param>
        /// <returns></returns>
        public List<USUARIOS_TB> Consultar_Usuarios(SQLSentencias P_Peticion)
        {
            List<USUARIOS_TB> usuarios = new List<USUARIOS_TB>(); //Esta es la variable local que retornara valores
            DataTable dt = new DataTable(); //Variable contenedora del resultado en BD - Temporal

            try
            {
                SqlCommand cmd = new SqlCommand(); //Instancia de SQL Command, que permite configurar comando a ejecutar en BD

                //ASigna los valores del QUERY a ejecutar en SQL
                cmd.Connection = objconexion; //ASigna conexion
                cmd.CommandType = System.Data.CommandType.Text; //ASigna el tipo
                cmd.CommandText = P_Peticion.Peticion; //ASigna peticion recibida

                if (P_Peticion.lstParametros.Count > 0) //Consulta si tiene parametros
                    cmd.Parameters.AddRange(P_Peticion.lstParametros.ToArray()); //Los asigna

                SqlDataAdapter objCaptura = new SqlDataAdapter(cmd); //Aqui se crea instancia para reliazar consultas en BD
                objCaptura.Fill(dt); //Aqui se ejecuta la consulta en BD y se almacena en memoria la respuesta

                if (dt.Rows.Count > 0) //Valida si la consulta devolvio resultados
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        USUARIOS_TB u = new USUARIOS_TB(); //Instancia temporal

                        u.Usuario_ID = Int32.Parse(item.ItemArray[0].ToString());
                        u.Email= item.ItemArray[1].ToString();
                        u.Pass= item.ItemArray[2].ToString();
                        u.Tipo_Usuario = byte.Parse(item.ItemArray[3].ToString());

                        usuarios.Add(u);
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }

            return usuarios;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="P_Peticion"></param>
        /// <returns></returns>
        public List<CUENTAS_TB> Consultar_Cuentas(SQLSentencias P_Peticion)
        {
            List<CUENTAS_TB> cuentas = new List<CUENTAS_TB>(); //Esta es la variable local que retornara valores
            DataTable dt = new DataTable(); //Variable contenedora del resultado en BD - Temporal

            try
            {
                SqlCommand cmd = new SqlCommand(); //Instancia de SQL Command, que permite configurar comando a ejecutar en BD

                //ASigna los valores del QUERY a ejecutar en SQL
                cmd.Connection = objconexion; //ASigna conexion
                cmd.CommandType = System.Data.CommandType.Text; //ASigna el tipo
                cmd.CommandText = P_Peticion.Peticion; //ASigna peticion recibida

                if (P_Peticion.lstParametros.Count > 0) //Consulta si tiene parametros
                    cmd.Parameters.AddRange(P_Peticion.lstParametros.ToArray()); //Los asigna

                SqlDataAdapter objCaptura = new SqlDataAdapter(cmd); //Aqui se crea instancia para reliazar consultas en BD
                objCaptura.Fill(dt); //Aqui se ejecuta la consulta en BD y se almacena en memoria la respuesta

                if (dt.Rows.Count > 0) //Valida si la consulta devolvio resultados
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        CUENTAS_TB u = new CUENTAS_TB(); //Instancia temporal

                        u.Cuenta_ID = Int32.Parse(item.ItemArray[0].ToString());
                        u.Cuenta_Usuario_ID =Int32.Parse(item.ItemArray[1].ToString());
                        u.Tipo_cuenta = item.ItemArray[2].ToString();
                        u.Numero_Tarjeta = item.ItemArray[3].ToString();

                        cuentas.Add(u);
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }

            return cuentas;
        }

        /// <summary>
        /// Devuelve la lista de notas
        /// </summary>
        /// <param name="P_Peticion"></param>
        /// <returns></returns>
        public List<NOTAS_TB> Consultar_Notas(SQLSentencias P_Peticion)
        {
            List<NOTAS_TB> notas = new List<NOTAS_TB>(); //Esta es la variable local que retornara valores
            DataTable dt = new DataTable(); //Variable contenedora del resultado en BD - Temporal

            try
            {
                SqlCommand cmd = new SqlCommand(); //Instancia de SQL Command, que permite configurar comando a ejecutar en BD

                //ASigna los valores del QUERY a ejecutar en SQL
                cmd.Connection = objconexion; //ASigna conexion
                cmd.CommandType = System.Data.CommandType.Text; //ASigna el tipo
                cmd.CommandText = P_Peticion.Peticion; //ASigna peticion recibida

                if (P_Peticion.lstParametros.Count > 0) //Consulta si tiene parametros
                    cmd.Parameters.AddRange(P_Peticion.lstParametros.ToArray()); //Los asigna

                SqlDataAdapter objCaptura = new SqlDataAdapter(cmd); //Aqui se crea instancia para reliazar consultas en BD
                objCaptura.Fill(dt); //Aqui se ejecuta la consulta en BD y se almacena en memoria la respuesta

                if (dt.Rows.Count > 0) //Valida si la consulta devolvio resultados
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        NOTAS_TB n = new NOTAS_TB(); //Instancia temporal

                        n.Nota_ID = Int32.Parse(item.ItemArray[0].ToString());
                        n.Notas_Cuenta_ID = Int32.Parse(item.ItemArray[1].ToString());
                        n.Titulo = item.ItemArray[2].ToString();
                        n.Cuerpo = item.ItemArray[3].ToString();
                        n.Fecha_Creacion =DateTime.Parse(item.ItemArray[4].ToString());
                        n.Estado = item.ItemArray[5].ToString();


                        notas.Add(n);
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.CERRAR();
            }

            return notas;
        }


        #endregion





        #endregion

    }
}
