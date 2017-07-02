as yet unclassified
renameDataPoint: aKey with: aNewKey
	| oldValue |
	
	oldValue := self data at: aKey.
	self data removeKey: aKey  ifAbsent: [Transcript show: 'Key not found!'].
	self data at: aNewKey put: oldValue.
	
	self changed