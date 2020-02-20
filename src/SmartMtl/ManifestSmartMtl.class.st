"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestSmartMtl,
	#superclass : #PackageManifest,
	#category : #'SmartMtl-Manifest'
}

{ #category : #'code-critics' }
ManifestSmartMtl class >> ruleRBInstVarInSubclassesRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#SMAggregator)) #'2020-02-19T21:22:33.944259-05:00') )
]
