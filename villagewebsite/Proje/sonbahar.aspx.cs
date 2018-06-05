using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;

public partial class sonbahar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Resimler"].ConnectionString);

        string sorgu = "select Id,sonbaharyol from sonbahar";
        SqlCommand cmd = new SqlCommand(sorgu, cnn);

        cnn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        lstresimler.DataSource = dr;
        lstresimler.DataBind();

        cnn.Close();
    }
}