as yet unclassified
flushInlineNodes: inlineNodes to: aHtmlBlockMorph
	| formatter htmlInlineMorph |
	inlineNodes ifNotEmpty: [
		formatter := HtmlFormatter preferredFormatterClass new.
		inlineNodes do: [ :node | node addToFormatter: formatter ].
		htmlInlineMorph := formatter htmlInlineMorph.
		htmlInlineMorph text ifNotEmpty: [
			htmlInlineMorph nodes: inlineNodes.
			aHtmlBlockMorph addChild: htmlInlineMorph ] ]