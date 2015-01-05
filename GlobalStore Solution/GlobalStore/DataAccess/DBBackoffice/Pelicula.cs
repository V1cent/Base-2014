using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DataAccess.DBBackoffice
{
    public class Pelicula : DataAccess.DBConnect
    {
        public void InsertCategoriaPelicula(string values)
        {
            string query = "INSERT INTO CATEGORIA_PEL (CAT_PEL_Nombre, CAT_PEL_Descripcion) VALUES " + values;

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

        public void InsertDirector(string values)
        {
            string query = "INSERT INTO DIRECTOR (DIR_Nombre) VALUES " + values;

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

        public void InsertActor(string values)
        {
            string query = "INSERT INTO ACTOR (ACT_Nombre) VALUES " + values;

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

        public void InsertLenguaje(string values)
        {
            string query = "INSERT INTO LENGUAJE(LENG_Nombre) VALUES " + values;

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

        public void InsertSubtitulo(string values)
        {
            string query = "INSERT INTO SUBTITULO(SUB_Nombre) VALUES " + values;

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

        public void DeleteSubtitulo(string values)
        {
            string query = "DELETE FROM SUBTITULO WHERE SUB_Id="+ values;

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
