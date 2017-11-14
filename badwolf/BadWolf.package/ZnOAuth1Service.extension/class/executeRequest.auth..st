*BadWolf
executeRequest: request auth: outhData
	| service response |
	self resolveEncodingIssueIn: request.
	service := self new
		providerAccount: (ZnOAuth1ConsumerData new
			consumer: (outhData at: 1) key;
			consumerSecret: (outhData at: 1) value).
	response := service executeRequest: request token: (ZnOAuth1Token new
		value: (outhData at: 2) key;
		secret: (outhData at: 2) value).
	response isSuccess 
		ifFalse: [ self error: 'Post failed: ', response contents printString ].
	^ NeoJSONReader fromString: response contents.
	