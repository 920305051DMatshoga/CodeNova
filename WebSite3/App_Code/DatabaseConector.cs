using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for DatabaseConector
/// </summary>
public class DatabaseConector
{
    private SqlConnection conn;
    private SqlCommand cmd;

	public DatabaseConector()
	{
        conn = new SqlConnection("Data Source=.'\'SQLEXPRESS;AttachDbFilename=|DataDirectory|'\'NovaDB.mdf;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand();
        cmd.Connection = conn;
	}

    public SqlCommand getCommand()
    {
        return cmd;
    }

    public void close()
    {
        conn.Dispose();
        cmd.Connection.Close();
        cmd.Dispose();
    }
}