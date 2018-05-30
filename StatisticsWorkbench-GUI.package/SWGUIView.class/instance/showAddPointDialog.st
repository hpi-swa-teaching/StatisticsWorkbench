as yet unclassified
showAddPointDialog
	| addPointDialog dialogLayout PointX PointY | 
	
	addPointDialog := PHDialog new title: 'Add a new point'.
	dialogLayout := PHPage new. 
	PointX := PHTextArea placeholder: 'x'.
	PointY := PHTextArea placeholder: 'y'.
	dialogLayout
		withPadding;
		add: (PHLabel text: 'X-Value:'); 
		add: PointX; 
		add: (PHLabel text: 'Y-Value:'); 
		add: PointY; 
		add: ((PHButton text: 'Add') when: #clicked send: #accept: to: addPointDialog with: nil; when: #clicked send: #updateDataset to: self controller).
		
	addPointDialog content: dialogLayout. 
	
	(addPointDialog openFor: self)
		then: [self controller addPoint: (PointX text asNumber) @ (PointY text asNumber)];
		ifRejected: []