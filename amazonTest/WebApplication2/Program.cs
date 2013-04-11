using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Diagnostics;
using Amazon.PAAPI;




namespace WebApplication2

{
    public class AmazonSearch
    {   
        public DataTable GetProducts(string productName)
        {
                
                DataTable products = new DataTable();
                products.Columns.Add("Product", typeof(string));
                products.Columns.Add("Price", typeof(string));
                products.Columns.Add("Image", typeof(string));
                products.Columns.Add("url", typeof(string));

                
          
                // Instantiate Amazon ProductAdvertisingAPI client
                AWSECommerceServicePortTypeClient amazonClient = new AWSECommerceServicePortTypeClient();
                for (int i = 1; i <= 5; i++)
                {
                    
                    // prepare an ItemSearch request
                    ItemSearchRequest request = new ItemSearchRequest();
                    request.SearchIndex = "All";
                    request.Keywords = productName + " -kindle";
                    request.ResponseGroup = new string[] { "ItemAttributes", "Images"};
                    request.ItemPage = i.ToString();
                    request.Condition = Condition.New;
                    request.Availability = ItemSearchRequestAvailability.Available;

                    ItemSearch itemSearch = new ItemSearch();
                    itemSearch.Request = new ItemSearchRequest[] { request };
                    itemSearch.AWSAccessKeyId = ConfigurationManager.AppSettings["accessKeyId"];
                    itemSearch.AssociateTag = "testfo-20";

                    // send the ItemSearch request
                    ItemSearchResponse response = amazonClient.ItemSearch(itemSearch);



                    foreach (var item in response.Items[0].Item)
                    {
                        try
                        {
                                
                                products.Rows.Add(item.ItemAttributes.Title, item.ItemAttributes.ListPrice.FormattedPrice.Replace("$", ""),item.SmallImage.URL, item.DetailPageURL);
                                

                        }
                            
                         catch (NullReferenceException ex) {
                           Debug.WriteLine("Caught Exception: " + ex.Message);
                           continue;
                        }

                    }

                }
                return products;

            }

        }
    }
