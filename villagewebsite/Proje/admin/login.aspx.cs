using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Resimler"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand komut = new SqlCommand("select kullaniciadi,sifre from yonetbilgi where kullaniciadi='" + txtad.Text + "' and sifre='" +txtsifre.Text+ "'", con);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session["kullaniciadi"] = dr["kullaniciadi"];
                Response.Redirect("~/admin/panel.aspx");
            }
            else
            {
                //Session["IDKontrol"] = "";
                Response.Write("<script> alert('" + "Kullanıcı Adı veya Şifre yanlış." + "') </script>");
            }
            con.Dispose();
        }
        catch (Exception hata)
        {
            //Session["IDKontrol"] = "";
            Response.Write(hata.Message.ToString());
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Anasayfa.aspx");
    }
}