as yet unclassified
openWith: Columns

	|model|
	model := self new. 
	model columns: Columns.
	^ToolBuilder open: model.