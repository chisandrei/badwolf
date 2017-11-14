tweet
badWolf1 "but broken due to encodings"
  "I tweet myself"
  |client|
  client := ZnOAuth1TwitterUserAccess 
    forConsumerKey: CONSUMER key
    consumerSecret: CONSUMER value
    tokenValue: TOKEN key
    tokenSecret: TOKEN value.
   client statusesUpdate: thisContext sourceCode