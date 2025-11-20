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
}) filter ((item, index) -> (item.CustomerSiteId == null or item.CustomerSiteId == "") or (item.SiteName == null or item.SiteName == "") or (item.wasteType == null or item.wasteType == "") or (item.weight == null or item.weight == "") or (item.processType == null or item.processType == "") or (item.purchaseDate == null or item.purchaseDate == ""))




