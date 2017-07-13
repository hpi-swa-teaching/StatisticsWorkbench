as yet unclassified
testCreateAfter

	self assert: [ (SWWorkflow create: [ true ] after: SWNode new) notNil ]