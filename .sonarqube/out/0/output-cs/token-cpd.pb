ù
bD:\RK\github\raj-aspire\AJSuperMarketConApp\AJSuperMarketConApp\BusinessLayer\IInventoryService.cs
	namespace 	
AJSuperMarketConApp
 
. 
BusinessLayer +
{ 
public 

	interface 
IInventoryService &
{ 
Product		 
CreateProduct		 
(		 
Product		 %
product		& -
)		- .
;		. /
Product 
UpdateProduct 
( 
int !
	productId" +
,+ ,
string- 3
ProductName4 ?
)? @
;@ A
List 
< 
Product 
> 
GetProducts !
(! "
)" #
;# $
Product 

GetProduct 
( 
int 
	productId (
)( )
;) *
bool 
DeleteProduct 
( 
int 
	productId (
)( )
;) *
} 
} ¢ 
aD:\RK\github\raj-aspire\AJSuperMarketConApp\AJSuperMarketConApp\BusinessLayer\InventoryService.cs
	namespace 	
AJSuperMarketConApp
 
. 
BusinessLayer +
{ 
public 

class 
InventoryService !
:" #
IInventoryService$ 5
{ 
readonly 
List 
< 
Product 
> 
products '
=( )
new* -
List. 2
<2 3
Product3 :
>: ;
(; <
)< =
;= >
public

 
Product

 
CreateProduct

 $
(

$ %
Product

% ,
product

- 4
)

4 5
{ 	
products 
. 
Add 
( 
product  
)  !
;! "
return 
product 
; 
} 	
public 
bool 
DeleteProduct !
(! "
int" %
	productId& /
)/ 0
{ 	
bool 
result 
= 
false 
;  
Product 
product_Delete "
=# $
products% -
.- .
Find. 2
(2 3
item3 7
=>8 :
item; ?
.? @
	ProductID@ I
==J L
	productIdM V
)V W
;W X
products 
. 
Remove 
( 
product_Delete *
)* +
;+ ,
result 
= 
true 
; 
return 
result 
; 
} 	
public 
Product 

GetProduct !
(! "
int" %
	productId& /
)/ 0
{ 	
Product 
product 
= 
products &
.& '
Find' +
(+ ,
item, 0
=>1 3
item4 8
.8 9
	ProductID9 B
==C E
	productIdF O
)O P
;P Q
return   
product   
;   
}!! 	
public## 
List## 
<## 
Product## 
>## 
GetProducts## (
(##( )
)##) *
{$$ 	
if%% 
(%% 
products%% 
.%% 
Count%% 
==%% !
$num%%" #
)%%# $
LoadDefault&& 
(&& 
)&& 
;&& 
return(( 
products(( 
;(( 
})) 	
public++ 
Product++ 
UpdateProduct++ $
(++$ %
int++% (
	productId++) 2
,++2 3
string++4 :
ProductName++; F
)++F G
{,, 	
Product-- 
product_Edit--  
=--! "
products--# +
.--+ ,
Find--, 0
(--0 1
item--1 5
=>--6 8
item--9 =
.--= >
	ProductID--> G
==--H J
	productId--K T
)--T U
;--U V
product_Edit.. 
... 
ProductName.. $
=..% &
ProductName..' 2
;..2 3
return00 
product_Edit00 
;00  
}11 	
private33 
void33 
LoadDefault33  
(33  !
)33! "
{44 	
products55 
.55 
Add55 
(55 
new55 
Product55 $
{55% &
	ProductID55' 0
=551 2
$num553 4
,554 5
ProductName556 A
=55B C
$str55D P
}55Q R
)55R S
;55S T
products66 
.66 
Add66 
(66 
new66 
Product66 $
{66% &
	ProductID66' 0
=661 2
$num663 4
,664 5
ProductName666 A
=66B C
$str66D P
}66Q R
)66R S
;66S T
}77 	
}88 
}99 ◊
PD:\RK\github\raj-aspire\AJSuperMarketConApp\AJSuperMarketConApp\Model\Product.cs
	namespace 	
AJSuperMarketConApp
 
. 
Model #
{ 
public 

class 
Product 
{ 
public 
int 
	ProductID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ºQ
JD:\RK\github\raj-aspire\AJSuperMarketConApp\AJSuperMarketConApp\Program.cs
	namespace 	
AJSuperMarketConApp
 
{ 
public 

static 
class 
Program 
{		 
private

 
static

 
InventoryService

 '
prodService

( 3
=

4 5
new

6 9
InventoryService

: J
(

J K
)

K L
;

L M
private 
static 
void 
Main  
(  !
)! "
{ 	
Console 
. 
	WriteLine 
( 
$str G
)G H
;H I
Console 
. 
	WriteLine 
( 
$str >
)> ?
;? @
Console 
. 
	WriteLine 
( 
$str G
)G H
;H I
int 
option 
= 
	AskOption "
(" #
)# $
;$ %
while 
( 
option 
< 
$num 
) 
{ 
_ 
= 
process 
( 
option "
)" #
;# $
option 
= 
	AskOption "
(" #
)# $
;$ %
} 
} 	
public 
static 
int 
process !
(! "
int" %
option& ,
), -
{ 	
int 
result 
= 
$num 
; 
switch 
( 
option 
) 
{   
case!! 
$num!! 
:!! 
Console"" 
."" 
	WriteLine"" %
(""% &
$str""& A
)""A B
;""B C
Console## 
.## 
	WriteLine## %
(##% &
$str##& 8
)##8 9
;##9 :
Console$$ 
.$$ 
	WriteLine$$ %
($$% &
$str$$& A
)$$A B
;$$B C
foreach%% 
(%% 
var%%  
item%%! %
in%%& (
prodService%%) 4
.%%4 5
GetProducts%%5 @
(%%@ A
)%%A B
)%%B C
{&& 
Console'' 
.''  
	WriteLine''  )
('') *
string''* 0
.''0 1
Format''1 7
(''7 8
$str''8 B
,''B C
item''D H
.''H I
	ProductID''I R
,''R S
item''T X
.''X Y
ProductName''Y d
)''d e
)''e f
;''f g
}(( 
result)) 
=)) 
prodService)) (
.))( )
GetProducts))) 4
())4 5
)))5 6
.))6 7
Count))7 <
;))< =
break** 
;** 
case++ 
$num++ 
:++ 
Console,, 
.,, 
	WriteLine,, %
(,,% &
$str,,& A
),,A B
;,,B C
Console-- 
.-- 
	WriteLine-- %
(--% &
$str--& 3
)--3 4
;--4 5
Console.. 
... 
	WriteLine.. %
(..% &
$str..& A
)..A B
;..B C
Console// 
.// 
	WriteLine// %
(//% &
$str//& 7
)//7 8
;//8 9
int00 
	productId00 !
=00" #
Convert00$ +
.00+ ,
ToInt3200, 3
(003 4
Console004 ;
.00; <
ReadLine00< D
(00D E
)00E F
)00F G
;00G H
Console11 
.11 
	WriteLine11 %
(11% &
$str11& :
)11: ;
;11; <
string22 
productName22 &
=22' (
Convert22) 0
.220 1
ToString221 9
(229 :
Console22: A
.22A B
ReadLine22B J
(22J K
)22K L
)22L M
;22M N
Product44 
product44 #
=44$ %
new44& )
Product44* 1
{442 3
	ProductID444 =
=44> ?
	productId44@ I
,44I J
ProductName44K V
=44W X
productName44Y d
}44e f
;44f g
prodService55 
.55  
CreateProduct55  -
(55- .
product55. 5
)555 6
;556 7
break77 
;77 
case88 
$num88 
:88 
Console99 
.99 
	WriteLine99 %
(99% &
$str99& A
)99A B
;99B C
Console:: 
.:: 
	WriteLine:: %
(::% &
$str::& 4
)::4 5
;::5 6
Console;; 
.;; 
	WriteLine;; %
(;;% &
$str;;& A
);;A B
;;;B C
Console== 
.== 
	WriteLine== %
(==% &
$str==& 7
)==7 8
;==8 9
int>> 
productId_Edit>> &
=>>' (
Convert>>) 0
.>>0 1
ToInt32>>1 8
(>>8 9
Console>>9 @
.>>@ A
ReadLine>>A I
(>>I J
)>>J K
)>>K L
;>>L M
Console@@ 
.@@ 
	WriteLine@@ %
(@@% &
$str@@& 8
)@@8 9
;@@9 :
ProductBB 
product_EditBB (
=BB) *
prodServiceBB+ 6
.BB6 7

GetProductBB7 A
(BBA B
productId_EditBBB P
)BBP Q
;BBQ R
ConsoleCC 
.CC 
	WriteLineCC %
(CC% &
product_EditCC& 2
.CC2 3
ProductNameCC3 >
)CC> ?
;CC? @
ConsoleEE 
.EE 
	WriteLineEE %
(EE% &
$strEE& >
)EE> ?
;EE? @
product_EditFF  
.FF  !
ProductNameFF! ,
=FF- .
ConvertFF/ 6
.FF6 7
ToStringFF7 ?
(FF? @
ConsoleFF@ G
.FFG H
ReadLineFFH P
(FFP Q
)FFQ R
)FFR S
;FFS T
prodServiceHH 
.HH  
UpdateProductHH  -
(HH- .
productId_EditHH. <
,HH< =
product_EditHH> J
.HHJ K
ProductNameHHK V
)HHV W
;HHW X
breakJJ 
;JJ 
caseKK 
$numKK 
:KK 
ConsoleLL 
.LL 
	WriteLineLL %
(LL% &
$strLL& A
)LLA B
;LLB C
ConsoleMM 
.MM 
	WriteLineMM %
(MM% &
$strMM& 6
)MM6 7
;MM7 8
ConsoleNN 
.NN 
	WriteLineNN %
(NN% &
$strNN& A
)NNA B
;NNB C
ConsolePP 
.PP 
	WriteLinePP %
(PP% &
$strPP& 7
)PP7 8
;PP8 9
intQQ 
productId_DeleteQQ (
=QQ) *
ConvertQQ+ 2
.QQ2 3
ToInt32QQ3 :
(QQ: ;
ConsoleQQ; B
.QQB C
ReadLineQQC K
(QQK L
)QQL M
)QQM N
;QQN O
ConsoleSS 
.SS 
	WriteLineSS %
(SS% &
$strSS& B
)SSB C
;SSC D
ProductUU 
product_DeleteUU *
=UU+ ,
prodServiceUU- 8
.UU8 9

GetProductUU9 C
(UUC D
productId_DeleteUUD T
)UUT U
;UUU V
ConsoleVV 
.VV 
	WriteLineVV %
(VV% &
product_DeleteVV& 4
.VV4 5
ProductNameVV5 @
)VV@ A
;VVA B
ConsoleXX 
.XX 
	WriteLineXX %
(XX% &
$strXX& X
)XXX Y
;XXY Z
stringYY 
confirmationYY '
=YY( )
ConvertYY* 1
.YY1 2
ToStringYY2 :
(YY: ;
ConsoleYY; B
.YYB C
ReadLineYYC K
(YYK L
)YYL M
)YYM N
;YYN O
if[[ 
([[ 
confirmation[[ $
.[[$ %
ToLower[[% ,
([[, -
)[[- .
==[[/ 1
$str[[2 7
)[[7 8
prodService\\ #
.\\# $
DeleteProduct\\$ 1
(\\1 2
productId_Delete\\2 B
)\\B C
;\\C D
else]] 
Console^^ 
.^^  
	WriteLine^^  )
(^^) *
$str^^* I
)^^I J
;^^J K
break`` 
;`` 
caseaa 
$numaa 
:aa 
breakbb 
;bb 
defaultcc 
:cc 
breakdd 
;dd 
}ee 
returngg 
resultgg 
;gg 
}hh 	
privatejj 
staticjj 
intjj 
	AskOptionjj $
(jj$ %
)jj% &
{kk 	
tryll 
{mm 
Consolenn 
.nn 
	WriteLinenn !
(nn! "
$str	nn" ß
)
nnß ®
;
nn® ©
Consoleoo 
.oo 
	WriteLineoo !
(oo! "
$stroo" 1
)oo1 2
;oo2 3
Consolepp 
.pp 
Writepp 
(pp 
$strpp :
)pp: ;
;pp; <
Consoleqq 
.qq 
Writeqq 
(qq 
$strqq <
)qq< =
;qq= >
Consolerr 
.rr 
Writerr 
(rr 
$strrr =
)rr= >
;rr> ?
Consoless 
.ss 
Writess 
(ss 
$strss ?
)ss? @
;ss@ A
Consolett 
.tt 
	WriteLinett !
(tt! "
$strtt" 8
)tt8 9
;tt9 :
Consoleuu 
.uu 
	WriteLineuu !
(uu! "
$str	uu" ß
)
uuß ®
;
uu® ©
returnww 
Convertww 
.ww 
ToInt32ww &
(ww& '
Consoleww' .
.ww. /
ReadLineww/ 7
(ww7 8
)ww8 9
)ww9 :
;ww: ;
}xx 
catchyy 
(yy 
	Exceptionyy 
)yy 
{zz 
return{{ 
$num{{ 
;{{ 
}|| 
}}} 	
}~~ 
} 