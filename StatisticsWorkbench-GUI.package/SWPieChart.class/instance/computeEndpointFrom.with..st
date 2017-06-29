as yet unclassified
computeEndpointFrom: aStartpoint with: anAngle
	
	"endpoint is computed via matrix multiplication. check wikipedia, if you want to know it in 	detail"
	
	^ ((aStartpoint x * anAngle cos) - (aStartpoint y * anAngle sin)) @
		((aStartpoint x * anAngle sin) + (aStartpoint y * anAngle cos))