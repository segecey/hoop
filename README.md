Hoop
=======
[![Build Status](https://travis-ci.org/hoopcr/hoop.svg)](https://travis-ci.org/hoopcr/hoop)  [![Join the chat at https://gitter.im/amerobin/hoop](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/hoopcr/hoop?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


### How to try ?

```shell
git clone git@github.com:hoopcr/hoop.git
cd hoop
make deps
make install
```

### Basic example

```crystal
require "src/hoop"

include Hoop


class Foo < NSObject
  export_class
  def testAction
    alert = NSAlert.new
    alert.add_button_with_title = "Excellent"
    alert.set_message_text = "Hello, world from Hoop 😎"
    alert.run_modal
  end

  export "testAction"
end


NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc

window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.set_background_color = NSColor.white_color.to_objc
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

hoop_logo = NSImage.init_with_image "logo.png"

hoop_logo_view = NSImageView.new(NSRect.new(200,350, 300, 300).to_objc)
hoop_logo_view.set_image = hoop_logo.to_objc

window.content_view << hoop_logo_view.to_objc

hello_label = NSTextField.new(NSRect.new(160, 250, 380, 36).to_objc)
hello_label.value = "#{NSHost.current_host.localized_name}. 😎".to_objc
hello_label_font = NSFont.bold_system_font_of_size = 23.0
hello_label.set_font = hello_label_font.to_objc
window.content_view << hello_label.to_objc


love_label = NSTextField.new(NSRect.new(200, 160, 300, 70).to_objc)
love_label.value = "I ❤️ Crystal !".to_objc
love_label_font = NSFont.bold_system_font_of_size = 50.0
love_label.set_font = love_label_font.to_objc
window.content_view << love_label.to_objc

sel = Hoop::Selector.new("testAction").to_sel.to_objc

test_button = NSButton.new(NSRect.new(200, 70, 300, 70).to_objc)
test_button.set_title = "Test Button"
test_button.target = Foo.new.to_objc
test_button.action = sel
window.content_view << test_button.to_objc


ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run

```
## Screenshot
# ![Screenshot](https://raw.githubusercontent.com/hoopcr/hoop/master/assets/example_app.png)

Contributing
============

1. Fork it ( https://github.com/hoopcr/hoop/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
