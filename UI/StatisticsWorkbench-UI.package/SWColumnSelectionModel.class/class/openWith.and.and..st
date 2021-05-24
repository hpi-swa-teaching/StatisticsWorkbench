as yet unclassified
openWith: Columns and: aParent and: aParentSetter

	|model|
	model := self new. 
	model parentSetter: aParentSetter.
	model columns: Columns.
	model parent: aParent.
	^ToolBuilder open: model.