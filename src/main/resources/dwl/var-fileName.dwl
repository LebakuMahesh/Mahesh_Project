%dw 2.0
output json
---
(attributes.fileName splitBy  ".")[0] ++ "_Output." ++ (attributes.fileName splitBy  ".")[1]