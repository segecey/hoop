## hoop

## How to try ?

```shell
git clone git@github.com:0x73/hoop.git
shards install
crystal run example/webview_example.cr
```

## Bundled Application
```bash
cd example/bundled_application && sh build.sh && open Hoop.app
```

## Basic example

```crystal
# app.cr

require "src/hoop"
include Hoop

NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc

window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.set_background_color = NSColor.white_color.to_objc
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil.to_objc

b = NSButton.new(NSRect.new(50, 50, 600, 100).to_objc)
b.set_title = "MAKE REQUEST"

class Foo < NSObject
  export_class
  def bar
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

    alert = NSAlert.new
    alert.set_message_text = "User Id: #{userId.as(NSNumber).intValue} - Id: #{id.as(NSNumber).intValue} - Title: #{title} - Body: #{body}"
    alert.run_modal
  end
  export "bar"
end

b.target = Foo.new.to_objc
b.action = "bar"

window.content_view << b.to_objc
ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run

```

```shell
$ crystal app.cr
```

## Contributing

1. Fork it ( https://github.com/hoopcr/hoop/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Authors

- Sedat G. Çiftçi [@0x73](https://github.com/0x73)
- Serdar Doğruyol [@sdogruyol](https://github.com/sdogruyol)

## Thanks

Thanks to Manas for their awesome work on [Crocoa](https://github.com/manastech/crocoa).
