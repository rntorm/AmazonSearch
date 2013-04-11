using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Net;
using System.Text.RegularExpressions;
using System.Globalization;
using WebApplication2.Amazon.Webservice;

namespace WebApplication2
{   
   
    public partial class Home : System.Web.UI.Page
    {
       
        DataTable dt = new DataTable();
        string val;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += new EventHandler(this.GreetingBtn_Click);
            CurrencyButton.Click += new EventHandler(this.CurrencyButton_Click);
            
        }

        void GreetingBtn_Click(Object sender,
                           EventArgs e)
        {
            
            Button clickedButton = (Button)sender;
            AmazonSearch us = new AmazonSearch();
            dt = us.GetProducts(SearchBox.Text);
            val = drpList.SelectedItem.Value;
            if (val != "USD")
            {
                ChangeCurrency(dt, "USD");
            }
            Session["dt"] = dt;
            Session["val"] = val;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            CurrencyButton.Enabled = true;
            
        }
        //On click new currency is put
        void CurrencyButton_Click(Object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            if ((string)Session["val"] != drpList.SelectedItem.Value)
            {
                ChangeCurrency((DataTable)Session["dt"], (string)Session["val"]);
            }
        }

       
        //Changes the currency 
        public void ChangeCurrency(DataTable data, string value)
        {
            
            
            //Seems like a computer issue. I cannot convert without changing DecimalSeparator
            var ci = CultureInfo.InvariantCulture.Clone() as CultureInfo;
            ci.NumberFormat.NumberDecimalSeparator = ".";
            double a = Converter(value, drpList.SelectedItem.Value);
            foreach (DataRow row in data.Rows)
            {
                double b = System.Convert.ToDouble(row["Price"], ci);
                double c = a * b;
                Math.Round(c, 2);
                row["Price"] = c.ToString("0.00", CultureInfo.InvariantCulture);
               
            }
            Session["val"] = drpList.SelectedItem.Value;
            Session["dt"] = data;
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        
        //Calculates the currencyrate between to currencies
        public double Converter(string baseCurrency, string targetCurrency)
        {
            string sRate;
            double currencyRate;
            var ci = CultureInfo.InvariantCulture.Clone() as CultureInfo;
            ci.NumberFormat.NumberDecimalSeparator = ".";
            try
            {
                string url = string.Format("http://www.google.com/ig/calculator?hl=en&q=1{0}%3D%3F{1}", baseCurrency, targetCurrency);
                WebClient web = new WebClient();
                web.Encoding = System.Text.Encoding.ASCII;
                string response = web.DownloadString(url);
                Regex regex = new Regex("rhs: \\\"(\\d*.\\d*.\\d*)");
                Match match = regex.Match(response);
                sRate = match.Groups[1].Value.ToString();
                sRate = sRate.Replace("?", "");
                currencyRate = System.Convert.ToDouble(sRate, ci);
                

              
            }
            catch (Exception)
            {
                currencyRate = 0;              
            }
            return currencyRate;
        }

      
        protected void grid_PageIndexChanging(object sender,
                                       GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            dt = (DataTable)Session["dt"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        
      
    }
}