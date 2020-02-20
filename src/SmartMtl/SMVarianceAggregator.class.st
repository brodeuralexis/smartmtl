"
An aggregator that collects information about the variance of all provided values.
"
Class {
	#name : #SMVarianceAggregator,
	#superclass : #SMAggregator,
	#instVars : [
		'mean',
		'm2'
	],
	#category : #'SmartMtl-Aggregators'
}

{ #category : #aggregation }
SMVarianceAggregator >> aggregate: value [
	"Aggregates the state associated with this aggregator to calculate the variance using Welford's algorithm."
	|n m|
	size := size + 1.
	n := value - mean.
	mean := mean + (n / size).
	m := value - mean.
	m2 := m2 + (n * m).
]

{ #category : #aggregation }
SMVarianceAggregator >> collect [
	"Collects the state associated with this aggregator."
	|result|
	(size = 0) ifTrue: [ ^nil. ].
	(size = 1) ifTrue: [
		self reset.
		^0.
	].
	result := m2 / (size - 1).
	self reset.
	^result.
]

{ #category : #initialization }
SMVarianceAggregator >> initialize [
	"Initializes this variance aggregator."
	self reset.
]

{ #category : #aggregation }
SMVarianceAggregator >> reset [
	"Resets the state of this aggregator."
	mean := 0.
	size := 0.
	m2 := 0.
]
