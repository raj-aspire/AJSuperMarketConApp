func @_AJSuperMarketConApp.Program.Main$$() -> () loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :11 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Console
%0 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :13 :30) // "= = = = = = = = = = = = = = = = = = = =" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :13 :12) // Console.WriteLine("= = = = = = = = = = = = = = = = = = = =") (InvocationExpression)
// Entity from another assembly: Console
%2 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :14 :30) // "Welcome to AJ Super Market123!" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :14 :12) // Console.WriteLine("Welcome to AJ Super Market123!") (InvocationExpression)
// Entity from another assembly: Console
%4 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :15 :30) // "= = = = = = = = = = = = = = = = = = = =" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :15 :12) // Console.WriteLine("= = = = = = = = = = = = = = = = = = = =") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AskOption
%6 = cbde.unknown : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :17 :25) // AskOption() (InvocationExpression)
%7 = cbde.alloca i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :17 :16) // option
cbde.store %6, %7 : memref<i32> loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :17 :16)
br ^1

^1: // BinaryBranchBlock
%8 = cbde.load %7 : memref<i32> loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :19 :19)
%9 = constant 5 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :19 :28)
%10 = cmpi "slt", %8, %9 : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :19 :19)
cond_br %10, ^2, ^3 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :19 :19)

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: process
%11 = cbde.load %7 : memref<i32> loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :21 :28)
%12 = cbde.unknown : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :21 :20) // process(option) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AskOption
%13 = cbde.unknown : i32 loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :23 :25) // AskOption() (InvocationExpression)
cbde.store %13, %7 : memref<i32> loc("D:\\RK\\github\\raj-aspire\\AJSuperMarketConApp\\AJSuperMarketConApp\\Program.cs" :23 :16)
br ^1

^3: // ExitBlock
return

}
// Skipping function process(i32), it contains poisonous unsupported syntaxes

// Skipping function AskOption(), it contains poisonous unsupported syntaxes

