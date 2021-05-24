event-handling
column: aNumber setSelected: aBool

	|column|
	column:= self columns at: aNumber.
	self parentSetter value: column.