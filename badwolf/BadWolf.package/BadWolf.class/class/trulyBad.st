tweet
trulyBad "but broken due to encodings"
	ZnOAuth1TwitterUserAccess new
		oauth1Service: (ZnOAuth1Service new
			providerAccount: (ZnOAuth1ConsumerData new
				consumer: CONSUMER key;
				consumerSecret: CONSUMER value));
		accessToken: (ZnOAuth1Token new
			value: TOKEN key;
			secret: TOKEN value) ;
		statusesUpdate:thisContext sourceCode