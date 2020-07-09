using AJSuperMarketConApp.BusinessLayer;
using AJSuperMarketConApp.Model;
using Xunit;

namespace AJSuperMarketConAppXUnitTest
{
    public class AJSuperMarketUnitTest
    {
        [Fact]
        public void Process_ListProduct_True()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 1, ProductName = "Fridge" });
            iService.CreateProduct(new Product { ProductID = 2, ProductName = "Television" });

            Assert.Equal(2, iService.GetProducts().Count);
        }

        [Fact]
        public void Process_ListProduct_False()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 1, ProductName = "Fridge" });
            iService.CreateProduct(new Product { ProductID = 2, ProductName = "Television" });

            Assert.NotEqual(2, iService.GetProducts().Count);
        }

        [Fact]
        public void Process_CreateProduct_True()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 3, ProductName = "Washing Machine" });

            Assert.Equal("Washing Machine", iService.GetProduct(3).ProductName);
        }

        [Fact]
        public void Process_UpdateProduct_True()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 1, ProductName = "Fridge" });
            iService.CreateProduct(new Product { ProductID = 2, ProductName = "TV" });

            int productId = 2;
            string newProductName = "Television";
            iService.UpdateProduct(productId, newProductName);

            Assert.Equal(newProductName, iService.GetProduct(productId).ProductName);
        }

        [Fact]
        public void Process_DeleteProduct_True()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 1, ProductName = "Fridge" });
            iService.CreateProduct(new Product { ProductID = 2, ProductName = "TV" });

            int productId = 2;

            Assert.True(iService.DeleteProduct(productId));
        }

        [Fact]
        public void Process_GetProduct_True()
        {
            InventoryService iService = new InventoryService();

            iService.CreateProduct(new Product { ProductID = 1, ProductName = "Fridge" });
            iService.CreateProduct(new Product { ProductID = 2, ProductName = "Washing Machine" });

            int productId = 2;
            string productName = "Washing Machine";

            Assert.Equal(productName, iService.GetProduct(productId).ProductName);
        }
    }
}
