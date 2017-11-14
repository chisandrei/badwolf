tweet
badWolf
 "I tweet myself"
 |request|
 request := ZnRequest post: 'https://api.twitter.com/1.1/statuses/update.json'.
 request entity: (ZnApplicationFormUrlEncodedEntity new
   at: 'status' put: thisContext sourceCode;
   yourself).
 ZnOAuth1Service 
   executeRequest: request 
   auth: {CONSUMER . TOKEN}