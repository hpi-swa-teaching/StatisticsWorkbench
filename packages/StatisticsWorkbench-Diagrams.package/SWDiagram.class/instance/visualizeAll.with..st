visualization
visualizeAll: aSWDataCollection with: aSWChartSubclass

	|chart|
	aSWDataCollection do: [:swData | 
		chart := aSWChartSubclass create.
		self visualize: swData with: chart].
