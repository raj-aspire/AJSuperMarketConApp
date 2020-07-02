using System;
using System.Collections.Generic;

namespace AJSuperMarketConApp
{
    class Program
    {
        static List<Product> products = new List<Product>();
        static void Main(string[] args)
        {
            Console.WriteLine("= = = = = = = = = = = = = = = = = = = =");
            Console.WriteLine("Welcome to AJ Super Market!");
            Console.WriteLine("= = = = = = = = = = = = = = = = = = = =");
            int option = askOption();

            while (option < 5)
            {
                option = process(option);
            }
        }

        private static int process(int option)
        {
            int result = 0;
            switch (option)
            {
                case 1:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Listing products");
                    Console.WriteLine("= = = = = = = = = = = = =");
                    foreach (var item in loadProducts())
                    {
                        Console.WriteLine(string.Format("{0}, {1}", item.ProductID, item.ProductName));
                    }

                    result = askOption();
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
                    addProduct(product);

                    result = askOption();
                    break;
                case 3:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Edit product");
                    Console.WriteLine("= = = = = = = = = = = = =");

                    Console.WriteLine("Enter ProductID");
                    int productId_Edit = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Old Product Name");
                    
                    Product product_Edit = products.Find(item => item.ProductID == productId_Edit);
                    Console.WriteLine(product_Edit.ProductName);
                    
                    Console.WriteLine("Enter New Product Name");
                    string productName_Edit = Convert.ToString(Console.ReadLine());
                    
                    product_Edit.ProductName = productName_Edit;

                    result = askOption();
                    break;
                case 4:
                    Console.WriteLine("= = = = = = = = = = = = =");
                    Console.WriteLine("Delete Product");
                    Console.WriteLine("= = = = = = = = = = = = =");

                    Console.WriteLine("Enter ProductID");
                    int productId_Delete = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Product Name to be deleted");

                    Product product_Delete = products.Find(item => item.ProductID == productId_Delete);
                    Console.WriteLine(product_Delete.ProductName);

                    Console.WriteLine("Are you sure you want to delete? Type Yes or No.");
                    string confirmation = Convert.ToString(Console.ReadLine());

                    if (confirmation.ToLower() == "yes")
                        products.Remove(product_Delete);
                    else
                        Console.WriteLine("No proper input. Not deleted.");

                    result = askOption();
                    break;
                case 5:
                    break;
                default:
                    break;
            }

            return result;
        }

        private static int askOption()
        {
            try
            {
                Console.WriteLine("Select option");
                Console.Write("Enter 1 - List Products\t");
                Console.Write("|| Enter 2 - Add Products\t");
                Console.Write("|| Enter 3 - Edit Products\t");
                Console.Write("|| Enter 4 - Delete Products\t");
                Console.WriteLine("|| Enter 5 - To Exit");

                return Convert.ToInt32(Console.ReadLine());
            }
            catch (Exception)
            {
                return 5;
            }
        }

        private static List<Product> loadProducts()
        {
            
            if (products.Count == 0)
                loadDefault();

            return products;
        }

        private static void loadDefault()
        {
            products.Add(new Product { ProductID = 1, ProductName = "Toor Dhall" });
            products.Add(new Product { ProductID = 2, ProductName = "Orid Dhall" });
        }

        private static void addProduct(Product product)
        {
            products.Add(new Product { ProductID = product.ProductID, ProductName = product.ProductName });
        }
    }

    public class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
    }
}
