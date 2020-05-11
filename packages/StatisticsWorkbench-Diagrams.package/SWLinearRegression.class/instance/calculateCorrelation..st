accessing
calculateCorrelation: anArray

	| mean_X stddev_X mean_Y stddev_Y sum |
	mean_X := self calculateMean: anArray first.
	mean_Y := self calculateMean: anArray second.
	stddev_X := self calculateStandardDeviation: anArray first.
	stddev_Y := self calculateStandardDeviation: anArray second.
	sum := 0.

	(1 to: anArray first size) do: [:i | sum := sum + (((anArray first at: i) - mean_X)*((anArray second at: i) - mean_Y))].
	sum := sum / (stddev_X * stddev_Y).
	^ (sum/(anArray first size))

