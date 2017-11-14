Metacello new
	baseline: 'BadWolf';
	repository: 'github://chisandrei/badwolf:badwolf/badwolf';
	load.

BadWolf
	consumer:  'consumer_key' -> 'consumer_secret';
	token:  'token_key' -> 'token_secret'.
BadWolf badWolf.