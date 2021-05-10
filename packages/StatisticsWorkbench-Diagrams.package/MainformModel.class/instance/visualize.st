event-handling
visualize

	|data|
		
	data :=  SWDataUnlabeled fromCSVStream: self stream delimeter: self delimiter escapeWith: self escapeCharacter xAxis: 'Test1' yAxis:'Test'.
	(SWDiagram new visualize: data with: self selectedDiagram create) openInWindow.
	
	