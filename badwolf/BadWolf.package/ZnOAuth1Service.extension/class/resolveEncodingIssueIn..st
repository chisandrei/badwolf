*BadWolf
resolveEncodingIssueIn: request
	| encoder entity representation | 
	encoder := ZnPercentEncoder new.
	entity  := request entity. 
	representation := String streamContents: [ :stream |
		self
			writeQueryFields: entity fields withEncoder: ZnCharacterEncoder utf8 on: stream ].
	entity representation: representation.
	entity contentLength: representation size.
	request resetEntity: request entity.