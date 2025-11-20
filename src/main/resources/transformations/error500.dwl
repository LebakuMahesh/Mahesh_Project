%dw 2.0
output application/json
---
if(!isEmpty(error.errorMessage.payload) and !isEmpty(error.errorMessage.payload.errorOrigin))
	error.errorMessage.payload
else {
  "messages" :  if(error.cause.errorMessage.payload.messages != null) (error.cause.errorMessage.payload.messages) else error.description,
  "errorOrigin": p('application.name'),
  "status" : "ERROR",
  "code": error.errorType.asString default error.errorMessage.attributes.statusCode,
  "description" : error.detailedDescription,
  "correlationId" : vars.correlationId default "",
  "timestamp":  now(),
   "outputPayload":payload default ""
}