"
An aggregator of values that averages all values until they are collected from the aggregator.

"
Class {
	#name : #SMAverageAggregator,
	#superclass : #SMAggregator,
	#instVars : [
		'average'
	],
	#category : #'SmartMtl-Aggregators'
}

{ #category : #aggregation }
SMAverageAggregator >> aggregate: value [
	"Aggregate a single value to this aggregator."
	size := size + 1.
	average := (average * (size - 1) / size) + (value / size).
]

{ #category : #aggregation }
SMAverageAggregator >> collect [
	"Collects the result of this aggregator."
	|anAverage|
	(size = 0) ifTrue: [ ^nil. ].
	anAverage := average.
	self reset.
	^anAverage.
]

{ #category : #initialization }
SMAverageAggregator >> initialize [
	"Initializes this average aggregator."
	self reset.
]

{ #category : #aggregation }
SMAverageAggregator >> reset [
	"Resets the aggregation state of the aggregator."
	average := 0.
	size := 0.
]
