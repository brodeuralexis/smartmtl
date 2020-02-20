"
The base class to identify an aggregator.
"
Class {
	#name : #SMAggregator,
	#superclass : #Object,
	#instVars : [
		'size'
	],
	#category : #'SmartMtl-Aggregators'
}

{ #category : #aggregation }
SMAggregator >> aggregate: value [ 
	^ self subclassResponsibility
]

{ #category : #aggregation }
SMAggregator >> collect [
	^ self subclassResponsibility
]

{ #category : #aggregation }
SMAggregator >> reset [
	^ self subclassResponsibility
]
