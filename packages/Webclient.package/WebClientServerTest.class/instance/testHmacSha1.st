tests - oauth
testHmacSha1
	"Test the SHA1 HMAC algorithm"

	| key message |
	key := 'MCD8BKwGdgPHvAuvgvz4EQpqDAtx89grbuNMRd7Eh98&'.
	message := 'POST&https%3A%2F%2Fapi.twitter.com%2Foauth%2Frequest_token&oauth_callback%3Dhttp%253A%252F%252Flocalhost%253A3005%252Fthe_dance%252Fprocess_callback%253Fservice_provider_id%253D11%26oauth_consumer_key%3DGDdmIQH6jhtmLUypg82g%26oauth_nonce%3DQP70eNmVz8jvdPevU3oJD2AfF7R7odC2XJcn4XlZJqk%26oauth_signature_method%3DHMAC-SHA1%26oauth_timestamp%3D1272323042%26oauth_version%3D1.0'.

	self assert: (WebUtils hmacSha1: message key: key) base64Encoded = '8wUi7m5HFQy76nowoCThusfgB+Q='