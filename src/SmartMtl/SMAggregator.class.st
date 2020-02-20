"
The base class to identify an aggregator.
"
Class {
	#name : #SMAggregator,
	#superclass : #Object,
	#category : #'SmartMtl-Aggregators'
}

{ #category : #accessing }
SMAggregator >> aggregate: arg1 [ 
	^ self subclassResponsibility
]

{ #category : #accessing }
SMAggregator >> collect [
	^ self subclassResponsibility
]

{ #category : #accessing }
SMAggregator >> reset [
	^ self subclassResponsibility
]