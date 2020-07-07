using System.Collections.Generic;
using AJSuperMarketConApp.Model;

namespace AJSuperMarketConApp.BusinessLayer
{
    public interface IInventoryService
    {
        #region Product
        Product CreateProduct(Product product);

        Product UpdateProduct(int productId, string ProductName);

        List<Product> GetProducts();

        Product GetProduct(int productId);

        bool DeleteProduct(int productId);
        #endregion
    }
}
