%dw 2.0
output application/json
---
payload.Sheet1 map ((item, index) ->
{
    "businessUnit": item."Business Unit" default "",
    "supplier": if(isEmpty(item."Supplier")) ""  else item.Supplier ,
    "supplierId": item."Supplier ID",
    "productId2": item."Product ID2 (in case product ID 1 is blank)",
    "countryOfOrigin": item."Supplier Country",
    "productName": item."Product ID Details",
    "productId": item."Product ID",
    "description4": item."Description 4",
    "description1": item."Description 1",
    "description2": item."Description 2",
    "description3": item."Description 3",
    "description5": item."Description 5",
    "purchaseDate": item."Purchase Date",
    "spend": item."Spend (EUR)",
    "spendUnit": item."Spend (EUR)"   
}) filter ((item, index) -> (item.businessUnit == null or item.businessUnit == "") or (item.supplier == null or item.supplier == "") or (item.supplierId == null or item.supplierId == "") or (item.productId2 == null or item.productId2 == "") or (item.countryOfOrigin == null or item.countryOfOrigin == "") or (item.productName == null or item.productName == "") or (item.productId == null or item.productId == "") or (item.description4 == null or item.description4 == "") or (item.description1 == null or item.description1 == "") or (item.description2 == null or item.description2 == "") or (item.description3 == null or item.description3 == "") or (item.description5 == null or item.description5 == "") or (item.purchaseDate == null or item.purchaseDate == "") or (item.spend == null or item.spend == "") or (item.spendUnit == null or item.spendUnit == ""))