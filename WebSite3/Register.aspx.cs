﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    private DatabaseConector connect;
    private Hasher hash = new Hasher();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        DatabaseConector conect = new DatabaseConector();
        SqlCommand cmd = conect.getCommand();

        string cmdText = "INSERT INTO Users VALUES('" + txtUserName.Text + "', '" 
            + txtEmail.Text +"', '"
            + hash.hash(txtPassword.Text) + "', '"
            + txtFName.Text +"', '"
            + txtLName.Text +"', "
            + lstTitle.SelectedValue +", '"
            + txtAdress.Text +"', "
            + txtAccount.Text +", 'false');";

        cmd.CommandText = cmdText;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        conect.close();
    }
}