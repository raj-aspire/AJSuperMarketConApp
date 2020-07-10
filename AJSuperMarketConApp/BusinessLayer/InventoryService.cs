using System.Collections.Generic;
using AJSuperMarketConApp.Model;

namespace AJSuperMarketConApp.BusinessLayer
{
    public class InventoryService : IInventoryService
    {
        readonly List<Product> products = new List<Product>();

        public Product CreateProduct(Product product)
        {
            products.Add(product);

            return product;
        }

        public bool DeleteProduct(int productId)
        {
            bool result = false;

            Product product_Delete = products.Find(item => item.ProductID == productId);
            products.Remove(product_Delete);
            result = true;

            return result;
        }

        public Product GetProduct(int productId)
        {
            Product product = products.Find(item => item.ProductID == productId);

            return product;
        }

        public List<Product> GetProducts()
        {
            if (products.Count == 0)
                LoadDefault();

            return products;
        }

        public Product UpdateProduct(int productId, string ProductName)
        {
            Product product_Edit = products.Find(item => item.ProductID == productId);
            product_Edit.ProductName = ProductName;

            return product_Edit;
        }

        private void LoadDefault()
        {
            products.Add(new Product { ProductID = 1, ProductName = "Toor Dhall" });
            products.Add(new Product { ProductID = 2, ProductName = "Orid Dhall" });
        }
    }
}
