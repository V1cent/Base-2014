using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DataAccess.DBBackoffice
{
    public class Empresa : DataAccess.DBConnect
    {
        public void InsertLugarEmpresa(string values)
        {
            string query = "INSERT INTO Lugar (LUG_Nombre,LUG_Tipo,LUG_Descripcion,LUG_LUG_Id)VALUES " + values;

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

        public void InsertEmpresa(string values)
        {
            string query = "INSERT INTO Empresa (EMP_Sitio_Web, EMP_Correo,EMP_LUG_Id,EMP_Nombre) VALUES " + values;

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

        public void InsertCargoEmpresa(string values)
        {
            string query = "INSERT INTO CARGO_EMP (CAR_EMP_Nombre, CAR_EMP_Salario, CAR_EMP_EMP_Id) VALUES " + values;

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
