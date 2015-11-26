require "./../src/hoop"

include Hoop

url = NSURL.url_with_string "http://sedat.ninja/test.php?username=0x73&password=secret"
req = NSURLRequest.request_with_url url.to_objc
res = NSURLResponse.new

data = NSURLConnection.send_synchronous_request req.to_objc, res.to_objc, nil.to_objc

result = NSJSONSerialization.json_object_with_data data.to_objc, LibCF::NSJSONReadingOptions::KNilOptions, nil.to_objc

body = result.object_for_key "error"
title = result.object_for_key "message"
