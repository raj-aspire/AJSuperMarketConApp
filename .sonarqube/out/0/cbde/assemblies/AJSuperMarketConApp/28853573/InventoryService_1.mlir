func @_AJSuperMarketConApp.BusinessLayer.InventoryService.CreateProduct$AJSuperMarketConApp.Model.Product$(none) -> none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :9 :8) {
^entry (%_product : none):
%0 = cbde.alloca none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :9 :37)
cbde.store %_product, %0 : memref<none> loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :9 :37)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :11 :12) // Not a variable of known type: products
%2 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :11 :25) // Not a variable of known type: product
%3 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :11 :12) // products.Add(product) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :13 :19) // Not a variable of known type: product
return %4 : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function DeleteProduct(i32), it contains poisonous unsupported syntaxes

// Skipping function GetProduct(i32), it contains poisonous unsupported syntaxes

func @_AJSuperMarketConApp.BusinessLayer.InventoryService.GetProducts$$() -> none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :34 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :36 :16) // Not a variable of known type: products
%1 = cbde.unknown : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :36 :16) // products.Count (SimpleMemberAccessExpression)
%2 = constant 0 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :36 :34)
%3 = cmpi "eq", %1, %2 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :36 :16)
cond_br %3, ^1, ^2 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :36 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoadDefault
%4 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :37 :16) // LoadDefault() (InvocationExpression)
br ^2

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :39 :19) // Not a variable of known type: products
return %5 : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :39 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function UpdateProduct(i32, none), it contains poisonous unsupported syntaxes

func @_AJSuperMarketConApp.BusinessLayer.InventoryService.LoadDefault$$() -> () loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :50 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :52 :12) // Not a variable of known type: products
%1 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :52 :25) // new Product { ProductID = 1, ProductName = "Toor Dhall" } (ObjectCreationExpression)
%2 = constant 1 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :52 :51)
%3 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :52 :68) // "Toor Dhall" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :52 :12) // products.Add(new Product { ProductID = 1, ProductName = "Toor Dhall" }) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :53 :12) // Not a variable of known type: products
%6 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :53 :25) // new Product { ProductID = 2, ProductName = "Orid Dhall" } (ObjectCreationExpression)
%7 = constant 2 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :53 :51)
%8 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :53 :68) // "Orid Dhall" (StringLiteralExpression)
%9 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\BusinessLayer\\InventoryService.cs" :53 :12) // products.Add(new Product { ProductID = 2, ProductName = "Orid Dhall" }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
