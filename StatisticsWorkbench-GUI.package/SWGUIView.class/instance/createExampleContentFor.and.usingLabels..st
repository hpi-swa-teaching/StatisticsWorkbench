creation
createExampleContentFor: aNameTextArea and: aValueTextArea usingLabels: aCheckbox
	
	aNameTextArea text: 'Example Dataset'.
	(aCheckbox checked)
		ifTrue: [aValueTextArea text: 'City|PopulationInThousands Apolda|1|22 Jena|2|110 Weimar|3|64 Erfurt|4|211 Suhl|5|35']
		ifFalse: [aValueTextArea text: 'x|y 1|2 3|4 5|6 7|8 9|10']