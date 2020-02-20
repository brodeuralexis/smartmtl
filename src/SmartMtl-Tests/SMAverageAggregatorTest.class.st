Class {
	#name : #SMAverageAggregatorTest,
	#superclass : #TestCase,
	#category : #'SmartMtl-Tests-Aggregators'
}

{ #category : #tests }
SMAverageAggregatorTest >> testAggregateAndCollectReturnNilIfNoValuesAreProvided [
	|aggregator|
	aggregator := SMAverageAggregator new.
	
	self assert: (aggregator collect) equals: nil.
]

{ #category : #tests }
SMAverageAggregatorTest >> testAggregateAndCollectReturnTheAverageOfAllTheProvidedValues [
	|aggregator|
	aggregator := SMAverageAggregator new
		aggregate: 3;
		aggregate: 28;
		aggregate: 42;
		aggregate: -23;
		aggregate: 5.
		
	self assert: (aggregator collect) equals: 11.
]

{ #category : #tests }
SMAverageAggregatorTest >> testAggregateAndCollectReturnTheValueIfOnlyOneValueIsProvided [
	|aggregator|
	aggregator := SMAverageAggregator new
		aggregate: 42.
		
	self assert: (aggregator collect) equals: 42.
]

{ #category : #tests }
SMAverageAggregatorTest >> testCollectCalledTwiceDoesNotPersistState [
	|aggregator|
	aggregator := SMAverageAggregator new
		aggregate: 666.
		
	self assert: (aggregator collect) equals: 666.
	self assert: (aggregator collect) equals: nil.
]
