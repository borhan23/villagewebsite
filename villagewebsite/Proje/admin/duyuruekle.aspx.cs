using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_videoyukle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Resimler"].ConnectionString);
    public static string resimid;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter Da = new SqlDataAdapter("select Id,tarih,duyuru from duyurular", con);
        DataSet Ds = new DataSet();
        Da.Fill(Ds);
        duyurugrid.DataSource = Ds;
        duyurugrid.DataBind();
        con.Close();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/panel.aspx");
    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        
        resimid = idgetir.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("select duyuru from duyurular where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", resimid);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtduyuru.Text = dr["duyuru"].ToString();
            btnkaydet.Visible = true;
            btnekle.Visible = false;
        }
        else
        {
            txtduyuru.Text = "veri cekilemedi";
        }
        
        con.Close();
        
    }

    protected void btnsil_Click(object sender, EventArgs e)
    {
        
        resimid = silid.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from duyurular where Id=@id", con);
        cmd.Parameters.AddWithValue("@id", resimid);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Silme işlemi başarılı.");
        silid.Text = "";
    }

    protected void btnkaydet_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("update duyurular set tarih=@tarih,duyuru=@duyuru where Id=@id", con);
        cmd.Parameters.AddWithValue("@tarih", DateTime.Now);
        cmd.Parameters.AddWithValue("@duyuru", txtduyuru.Text);
        cmd.Parameters.AddWithValue("@id",idgetir.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        btnkaydet.Visible = false;
        Response.Write("Güncelleme başarılı.");
        btnekle.Visible = true;
        txtduyuru.Text = "";
        idgetir.Text = "";
    }

    protected void btnekle_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into duyurular (tarih,duyuru) values(@tarih,@yol)", con);
        cmd.Parameters.AddWithValue("@tarih", DateTime.Now);
        cmd.Parameters.AddWithValue("@yol", txtduyuru.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Kayıt işlemi başarılı.");
        txtduyuru.Text = "";
    }
}