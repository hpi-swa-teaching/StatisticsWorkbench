testing
areMarkersInsideAxisBoundaries

	^ {self maximum . self minimum . self stepInterval . self startPoint . self endPoint} allSatisfy: [:item | item notNil]
