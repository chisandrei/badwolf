tweet
badWolf3 "but broken due to encodings"
	"I tweet myself"
	| myself client |
	myself := thisContext sourceCode.
	client := ZnOAuth1TwitterUserAccess 
		forConsumer: CONSUMER key
		secret: CONSUMER value
		accessToken: (ZnOAuth1Token new
			value: TOKEN key;
			secret: TOKEN value).
	client statusesUpdate: myself