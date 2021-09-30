Class {
	#name : #AeonBrowser,
	#superclass : #MiDraggableRoassalWidget,
	#instVars : [
		'metamodel',
		'model'
	],
	#category : #'Aeon-Spec'
}

{ #category : #examples }
AeonBrowser class >> open [
	<example> 
	super open
]

{ #category : #accessing }
AeonBrowser >> accept: anEntity [

	^ anEntity isKindOf: MooseModel
]

{ #category : #initialization }
AeonBrowser >> loadChart: aCanvas withElement: anElement [

	| builder clzzes |
	aCanvas @ RSCanvasController new.


	metamodel := anElement metamodel.
	builder := RSUMLClassBuilder new.
	clzzes := metamodel elements select: [ :a | 
		          (a isFM3Class or: [ a isFM3Trait ]) and: [ 
			          a isPrimitive not ] ].

	builder
		container: aCanvas;
		classes: clzzes.
	builder modelDescriptor
		classname: #name;
		instVars: [ :a | 
			a properties
				reject: [ :p | p hasOpposite ]
				thenCollect: [ :p | p name , ' : ' , p type name ] ];
		methods: #(  );
		superclass: #superclass;
		isAbstract: false;
		aggregations: {  };
		compositions: (clzzes flatCollect: [ :a | 
					 a properties
						 select: [ :p | p hasOpposite ]
						 thenCollect: [ :p | a -> p type ] ]) asSet asOrderedCollection.

	builder build.
	^ builder canvas
]
