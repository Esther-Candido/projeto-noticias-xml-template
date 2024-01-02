using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace noticias
{
    public partial class homepage_news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");  //site de noticias em xml
            //xm1 buscar os dados a URL acima..
            Xml1.Document = url;
        }
    }
}