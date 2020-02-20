Class {
	#name : #SMVarianceAggregatorTest,
	#superclass : #TestCase,
	#category : #'SmartMtl-Tests-Aggregators'
}

{ #category : #tests }
SMVarianceAggregatorTest >> testAggregateAndCollectDoesNotPersistState [
	|aggregator|
	aggregator := SMVarianceAggregator new
		aggregate: 3.
		
	self assert: (aggregator collect) equals: 0.
	self assert: (aggregator collect) equals: nil.
]

{ #category : #tests }
SMVarianceAggregatorTest >> testAggregateAndCollectReturn0IfOnly1ValueIsProvided [
	|aggregator|
	aggregator := SMVarianceAggregator new
		aggregate: 13.
		
	self assert: (aggregator collect) equals: 0.
]

{ #category : #tests }
SMVarianceAggregatorTest >> testAggregateAndCollectReturnNilIfNoValuesAreProvided [
	|aggregator|
	aggregator := SMVarianceAggregator new.
	
	self assert: (aggregator collect) equals: nil.
]

{ #category : #tests }
SMVarianceAggregatorTest >> testAggregateAndCollectReturnTheVarianceForTheProvidedValues [
	|aggregator|
	aggregator := SMVarianceAggregator new
		aggregate: 34;
		aggregate: 1;
		aggregate: 23;
		aggregate: 54;
		aggregate: 5.
		
	self assert: (aggregator collect asFloat) equals: 472.3.
]
