using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DAL
{
    public class Conexion
    {

        public SqlCommand abrirConexion()
        {
            try
            {
                var connectionString = Properties.Settings.Default.Conexion.ToString();
                SqlConnection cn = new SqlConnection(connectionString);
                cn.Open();
                SqlCommand objCmd = new SqlCommand();
                return objCmd;
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        
    }
}
