%dw 2.0
output application/json
---
payload."20240828 Waste examples" map ((item1, index1) ->
{
    "CustomerSiteId": item1."Customer Site ID",
    "SiteName": item1."Site Name",
    "wasteType": item1."Waste Type",
    "weight": item1."Weight",
    "processType": item1."Process Type",
    "purchaseDate": item1."Purchase Date"
}) filter ((item, index) -> item.CustomerSiteId != null and item.CustomerSiteId != "" and item.SiteName != null and item.SiteName != "" and item.wasteType != null and item.wasteType != "" and item.weight != null and item.weight != "" and item.processType != null and item.processType != "" and item.purchaseDate != null and item.purchaseDate != "")