using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class duyuru : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Resimler"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        
        SqlDataAdapter Da = new SqlDataAdapter("select tarih,duyuru from duyurular", con);
        DataSet Ds = new DataSet();
        Da.Fill(Ds);
        gridduyuru.DataSource = Ds;
        gridduyuru.DataBind();
        con.Close();

    }
}