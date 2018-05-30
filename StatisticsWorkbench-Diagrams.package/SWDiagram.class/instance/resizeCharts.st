updating
resizeCharts 

	self charts do: [:chart | 	chart extent: self extent. 
							chart position: self layoutBounds topLeft]