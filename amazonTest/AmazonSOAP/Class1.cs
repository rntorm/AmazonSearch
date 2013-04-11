using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Globalization;

namespace Amazon.PAAPI
{
    public class Class1
    {
        static void Main(string[] args) {
            var ci = CultureInfo.InvariantCulture.Clone() as CultureInfo;
            ci.NumberFormat.NumberDecimalSeparator = ".";
           
            List<string> products = new List<string>();
            List<string> price = new List<string>();
            // Instantiate Amazon ProductAdvertisingAPI client
            AWSECommerceServicePortTypeClient amazonClient = new AWSECommerceServicePortTypeClient();

           
            for (int i = 1; i <= 6; i++)
            {
                // prepare an ItemSearch request
                ItemSearchRequest request = new ItemSearchRequest();
                request.SearchIndex = "All";
                //request.Title = "WCF";
                request.Keywords = "playstation -kindle";
                request.ResponseGroup = new string[] {"ItemAttributes", "Images"};
                request.ItemPage = i.ToString();



                ItemSearch itemSearch = new ItemSearch();
                itemSearch.Request = new ItemSearchRequest[] { request };
                itemSearch.AWSAccessKeyId = ConfigurationManager.AppSettings["accessKeyId"];
                itemSearch.AssociateTag = "testfo-20";


                // send the ItemSearch request
                ItemSearchResponse response = amazonClient.ItemSearch(itemSearch);

           
            }
           

        }


    }
}