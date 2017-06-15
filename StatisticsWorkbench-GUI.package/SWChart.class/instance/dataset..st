accessing
dataset: anObject
	"Attention: Use carefully."
	"Normally, you would like to change the data of SWDataSet"
	"If you replace the variable dataset, you will be decoupled from charts which share
	this dataset."

	dataset isNil
			ifFalse: [ dataset removeDependent: self ].
	dataset := anObject.
	anObject addDependent: self.
	self update
