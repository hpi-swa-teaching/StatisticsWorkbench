updating
removeAllDatapoints
	
	self dataPoints do: [:dataPoint | dataPoint delete].
	self dataPoints removeAll