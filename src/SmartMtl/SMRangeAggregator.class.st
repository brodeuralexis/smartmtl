"
An aggregator that aggregates the range of values encoutered.
"
Class {
	#name : #SMRangeAggregator,
	#superclass : #SMAggregator,
	#instVars : [
		'minimum',
		'maximum'
	],
	#category : #'SmartMtl-Aggregators'
}

{ #category : #aggregation }
SMRangeAggregator >> aggregate: value [
	"Aggregates this value to the state of this aggregator."
	size := size + 1.
	minimum := minimum min: value.
	maximum := maximum max: value.
]

{ #category : #aggregation }
SMRangeAggregator >> collect [
	"Collects the state aggregated by this aggregator."
	|range|
	(size = 0) ifTrue: [ ^nil. ].
	range := minimum to: maximum.
	self reset.
	^range.
]

{ #category : #initialization }
SMRangeAggregator >> initialize [
	"Initializes this range aggregator."
	self reset.
]

{ #category : #aggregation }
SMRangeAggregator >> reset [
	"Resets the state of this aggregator."
	minimum := Float infinity.
	maximum := Float negativeInfinity.
	size := 0.
]
