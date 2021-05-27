as yet unclassified
openWith: Columns and: aBlock

	|model|
	model := self new. 
	model parentSetter: aBlock.
	model columns: Columns.
	^ToolBuilder open: model.