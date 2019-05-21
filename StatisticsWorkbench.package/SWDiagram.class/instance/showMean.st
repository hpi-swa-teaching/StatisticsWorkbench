geometry
showMean
|meanValue meanData|
(self charts first isKindOf: SWPieChart) ifTrue:[Exception signal: 'This chart does not support showMean functionality.'].
meanValue := self charts first data mean: 2.
meanData := SWDataUnlabeled create.
0 to: (self charts first data size) do: [:i | meanData add: (Array with: i with: meanValue)].
  "LineMorph from: (aPosition x - 5 @ aPosition y) to: (aPosition x + 5 @ aPosition y) color: aColor2 width: 1"
self visualize: meanData with: SWLineChart create.

^ meanData