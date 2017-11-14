*BadWolf
forConsumer: customerKey secret: customerSecret accessToken: accesToken
	self new
		oauth1Service: (ZnOAuth1Service new
			providerAccount: (ZnOAuth1ConsumerData new
				consumer: customerKey;
				consumerSecret: customerSecret));
		accessToken: accesToken