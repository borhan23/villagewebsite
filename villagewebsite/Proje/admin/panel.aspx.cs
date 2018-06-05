using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_yoneticipanelt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        labeltarih1.Text = DateTime.Now.ToLongDateString();
        lblAjaxZaman.Text = DateTime.Now.ToLongTimeString();
    }





    protected void Timer1_Tick(object sender, EventArgs e)
    {
        
    }

    protected void cikis_Click(object sender, ImageClickEventArgs e)
    {
        Session.Remove("kullaniciadi");
        Response.Redirect("~/admin/login.aspx");
    }

    protected void resim_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/resimyukle.aspx");

    }

    protected void duyuru_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/duyuruekle.aspx");
    }

}