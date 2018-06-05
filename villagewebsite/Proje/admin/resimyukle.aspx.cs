using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_resimyukle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/panel.aspx");
    }

    protected void sonbaharbtn_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=1");
    }

    protected void kisbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=2");
    }

    protected void ilkbaharbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=3");
    }

    protected void yazbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=4");
    }

    protected void parkbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=5");
    }

    protected void etkinbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin/yolyukle.aspx?anahtar=6");
    }
}