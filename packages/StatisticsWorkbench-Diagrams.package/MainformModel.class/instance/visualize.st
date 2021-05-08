as yet unclassified
visualize

	|data|
	Transcript show: self delimeter.
	
	data :=  SWDataUnlabeled fromCSVStream: self stream.

	(SWDiagram new visualize: data with: SWLineChart create) openInWindow.
	
	self stream close.
	