Class {
	#name : #SMRangeAggregatorTest,
	#superclass : #TestCase,
	#category : #'SmartMtl-Tests-Aggregators'
}

{ #category : #tests }
SMRangeAggregatorTest >> testAggregateAndCollectCalledTwiceDoesNotPersistTheState [
	|aggregator|
	aggregator := SMRangeAggregator new 
		aggregate: 10;
		aggregate: 3.
		
	self assert: (aggregator collect) equals: (3 to: 10).
	self assert: (aggregator collect) equals: nil.
]

{ #category : #tests }
SMRangeAggregatorTest >> testAggregateAndCollectReturnARangeFromAndToTheSameValueFor1ProvidedValue [
	|aggregator|
	aggregator := SMRangeAggregator new
		aggregate: 42.
		
	self assert: (aggregator collect) equals: (42 to: 42).
]

{ #category : #tests }
SMRangeAggregatorTest >> testAggregateAndCollectReturnNilIfNoValuesAreProvided [
	|aggregator|
	aggregator := SMRangeAggregator new.
	
	self assert: (aggregator collect) equals: nil.
]

{ #category : #tests }
SMRangeAggregatorTest >> testAverageAndCollectReturnTheRangeOfTheProvidedValues [
	|aggregator|
	aggregator := SMRangeAggregator new 
		aggregate: 5;
		aggregate: 19;
		aggregate: 20;
		aggregate: -3;
		aggregate: 0.
		
	self assert: (aggregator collect) equals: (-3 to: 20).
]
