using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DataAccess.DBBackoffice
{
    public class Disco : DataAccess.DBConnect
    {
        public void InsertDisquera(string values)
        {
            string query = "INSERT INTO disquera (DISQ_Nombre) VALUES " + values;

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
