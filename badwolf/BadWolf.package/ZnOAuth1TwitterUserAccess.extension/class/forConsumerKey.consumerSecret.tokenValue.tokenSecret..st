*BadWolf
forConsumerKey: customerKey consumerSecret: customerSecret tokenValue: tokenValue tokenSecret: tokenSecret
	^ self new
		oauth1Service: (ZnOAuth1Service new
			providerAccount: (ZnOAuth1ConsumerData new
				consumer: customerKey;
				consumerSecret: customerSecret));
		accessToken: (ZnOAuth1Token new
			value: tokenValue;
			secret: tokenSecret)