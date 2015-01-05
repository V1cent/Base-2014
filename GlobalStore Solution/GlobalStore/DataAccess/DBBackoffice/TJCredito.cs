using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DataAccess.DBBackoffice
{
    public class TJCredito : DataAccess.DBConnect
    {
        public void InsertTipoTarjetaCredito(string values)
        {
            string query = "INSERT INTO TIPO_TC (TCC_Nombre) VALUES " + values;

            //open connection
            if (this.OpenConnection() == true)
            {
                //create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(query, connection);

                //Execute command
                cmd.ExecuteNonQuery();

                //close connection
                this.CloseConnection();
            }
        }
    }
}
