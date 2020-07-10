using System;
using System.Collections.Generic;
using AJSuperMarketConApp.BusinessLayer;
using AJSuperMarketConApp.Model;

namespace AJSuperMarketConApp
{
    public static class Program
    {
<<<<<<< HEAD
=======
        static int unUsedPrivateVariableCheckRK = 0;
>>>>>>> c246a0409d55c0521d931b4e28aa5c13bfcd7ac7
        private static InventoryService prodService = new InventoryService();

        private static void Main()
        {
            int counter = 0;
            Console.WriteLine("= = = = = = = = = = = = = = = = = = = =");
            Console.WriteLine("Welcome to AJ Super Market123!");
            Console.WriteLine("= = = = = = = = = = = = = = = = = = = =");

            int option = AskOption();

            while (option < 5)
            {
                _ = process(option);

                option = AskOption();
            }
        }

        public static int process(int option)
        {
            int result = 0;
            switch (option)
            {
                case 1:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Listing products");
                    Console.WriteLine("= = = = = = = = = = = = =");
                    foreach (var item in prodService.GetProducts())
                    {
                        Console.WriteLine(string.Format("{0}, {1}", item.ProductID, item.ProductName));
                    }
                    result = prodService.GetProducts().Count;
                    break;
                case 2:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Add product");
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Enter ProductID");
                    int productId = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Enter Product Name");
                    string productName = Convert.ToString(Console.ReadLine());

                    Product product = new Product { ProductID = productId, ProductName = productName };
                    prodService.CreateProduct(product);

                    break;
                case 3:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Edit product");
                    Console.WriteLine("= = = = = = = = = = = = =");

                    Console.WriteLine("Enter ProductID");
                    int productId_Edit = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Old Product Name");

                    Product product_Edit = prodService.GetProduct(productId_Edit);
                    Console.WriteLine(product_Edit.ProductName);

                    Console.WriteLine("Enter New Product Name");
                    product_Edit.ProductName = Convert.ToString(Console.ReadLine());

                    prodService.UpdateProduct(productId_Edit, product_Edit.ProductName);

                    break;
                case 4:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Delete Product");
                    Console.WriteLine("= = = = = = = = = = = = =");

                    Console.WriteLine("Enter ProductID");
                    int productId_Delete = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Product Name to be deleted");

                    Product product_Delete = prodService.GetProduct(productId_Delete);
                    Console.WriteLine(product_Delete.ProductName);

                    Console.WriteLine("Are you sure you want to delete? Type Yes or No.");
                    string confirmation = Convert.ToString(Console.ReadLine());

                    if (confirmation.ToLower() == "yes")
                        prodService.DeleteProduct(productId_Delete);
                    else
                        Console.WriteLine("No proper input. Not deleted.");

                    break;
                case 5:
                    break;
                default:
                    break;
            }

            return result;
        }

        private static int AskOption()
        {
            try
            {
                Console.WriteLine("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -");
                Console.WriteLine("Select option");
                Console.Write("Enter 1 - List Products   ");
                Console.Write("|| Enter 2 - Add Products   ");
                Console.Write("|| Enter 3 - Edit Products   ");
                Console.Write("|| Enter 4 - Delete Products   ");
                Console.WriteLine("|| Enter 5 - To Exit");
                Console.WriteLine("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -");

                return Convert.ToInt32(Console.ReadLine());
            }
            catch (Exception)
            {
                return 5;
            }
        }
    }
}
