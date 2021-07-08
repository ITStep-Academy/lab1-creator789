using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach(string param in new string[] 
                                            { "name", "section", "cardNumber", "cardType"})
                if (string.IsNullOrEmpty(Request[param])) {
                    Response.Redirect("Error.aspx");
                }
            string path = Server.MapPath("./App_Data/sponsors.json");
            string data = File.ReadAllText(path);
            List<Sponsor> sponsors = JsonConvert.DeserializeObject<List<Sponsor>>(data);
            sponsors.Add(new Sponsor() {
                         Name = Request["name"],
                         Section = Request["section"],
                         CardNumber = Request["cardNumber"],
                         CardType = Request["cardType"]
                                      });

            string json = JsonConvert.SerializeObject(sponsors);
            File.WriteAllText(path, json);
        }
    }

    public struct Sponsor
    {
        public string Name { get; set; }
        public string Section { get; set; }
        public string CardNumber { get; set; }
        public string CardType { get; set; }
    }
}