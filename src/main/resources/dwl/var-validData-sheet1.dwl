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
}) filter ((item, index) -> item.businessUnit != null and item.businessUnit != "" and item.supplier != null and item.supplier != "" and item.supplierId != null and item.supplierId != "" and item.productId2 != null and item.productId2 != "" and item.countryOfOrigin != null and item.countryOfOrigin != "" and item.productName != null and item.productName != "" and item.productId != null and item.productId != "" and item.description4 != null and item.description4 != "" and item.description1 != null and item.description1 != "" and item.description2 != null and item.description2 != "" and item.description3 != null and item.description3 != "" and item.description5 != null and item.description5 != "" and item.purchaseDate != null and item.purchaseDate != "" and item.spend != null and item.spend != "" and item.spendUnit != null and item.spendUnit != "")