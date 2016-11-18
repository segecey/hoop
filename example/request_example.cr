require "./../src/hoop"

include Hoop

url = NSURL.url_with_string "https://jsonplaceholder.typicode.com/posts/2"
req = NSURLRequest.request_with_url url.to_objc
res = NSURLResponse.new

data = NSURLConnection.send_synchronous_request req.to_objc, res.to_objc, nil.to_objc
ns_log data

result = NSJSONSerialization.json_object_with_data data.to_objc, LibCF::NSJSONReadingOptions::KNilOptions, nil.to_objc
ns_log result

userId = result.object_for_key("userId")
id = result.object_for_key("id")
title = result.object_for_key("title")
body = result.object_for_key("body")

ns_log "#{userId.as(NSNumber).intValue}"
ns_log "#{id.as(NSNumber).intValue}"
ns_log "#{title.as(NSString)}"
ns_log "#{body}"