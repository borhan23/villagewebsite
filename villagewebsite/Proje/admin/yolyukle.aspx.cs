using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_resimyolu : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Resimler"].ConnectionString);
    public static string resimid;
    public void listele(string anahtar)
    {
        if (anahtar == "1")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,sonbaharyol from sonbahar", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
        if (anahtar == "2")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,kisyol from kis", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
        if (anahtar == "3")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,ilkbaharyol from ilkbahar", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
        if (anahtar == "4")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,yazyol from yaz", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
        if (anahtar == "5")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,parkyol from park", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
        if (anahtar == "6")
        {
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter("select Id,etkinlikyol from etkinlik", con);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            gridsonbahar.DataSource = Ds;
            gridsonbahar.DataBind();
            con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string anahtar = Request.QueryString["anahtar"];
        listele(anahtar);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/resimyukle.aspx");
    }

    protected void yukle_Click(object sender, EventArgs e)
    {
        string anahtar = Request.QueryString["anahtar"];
        if (anahtar == "1")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "sonbahar/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "sonbahar/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into sonbahar (sonbaharyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
        if (anahtar == "2")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "kış/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "kis/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into kis (kisyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
        if (anahtar == "3")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "ilkbahar/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "ilkbahar/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into ilkbahar (ilkbaharyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
        if (anahtar == "4")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "yaz/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "yaz/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into yaz (yazyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
        if (anahtar == "5")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "park/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "park/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into park (parkyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
        if (anahtar == "6")
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000)
                    {


                        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "etkinlik/" + FileUpload1.FileName);
                        string ad = FileUpload1.FileName;
                        string yol = "etkinlik/" + ad;
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into etkinlik (etkinlikyol) values(@yol)", con);
                        cmd.Parameters.AddWithValue("@yol", yol);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Kayıt işlemi başarılı.");
                    }
                    else
                    {
                        Response.Write("Max. 1MB resim yüklenebilir.");
                    }
                }
                else
                {
                    Response.Write("uzantı desteklenmiyor.");
                }
            }
            else
            {
                Response.Write("Lütfen dosya seçiniz.");
            }
        }
    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string anahtar = Request.QueryString["anahtar"];
        listele(anahtar);
    }

    protected void silbtn_Click(object sender, EventArgs e)
    {
        string anahtar = Request.QueryString["anahtar"];
        
        if (anahtar == "1")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from sonbahar where Id=@Id",con);
            cmd.Parameters.AddWithValue("@Id",silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
        if (anahtar == "2")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from kis where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
        if (anahtar == "3")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from ilkbahar where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
        if (anahtar == "4")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from yaz where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
        if (anahtar == "5")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from park where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
        if (anahtar == "6")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from etkinlik where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", silinecekid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Silme işlemi başarılı.");
        }
    }
}