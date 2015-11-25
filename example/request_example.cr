require "./../src/hoop"

include Hoop


url = NSURL.url_with_string "http://jsonplaceholder.typicode.com/posts/1"
req = NSURLRequest.request_with_url url.to_objc
res = NSURLResponse.new
error = NSError.new "com.hoop.example", 200, nil
data = NSURLConnection.send_synchronous_request req.to_objc, res.to_objc, error.to_objc

result = NSJSONSerialization.json_object_with_data data.to_objc, LibCF::NSJSONReadingOptions::KNilOptions, nil

body = result.object_for_key "body"
title = result.object_for_key "title"

puts "#{title} --- #{body}"
