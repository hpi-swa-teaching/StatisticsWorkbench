accessing
endPoint: aPoint
	
	self vertices at: 2 put: aPoint.
	self computeBounds ; "doesn't work, i don't know how to redraw the Line (analog startPoint)"
		updateMarkers
