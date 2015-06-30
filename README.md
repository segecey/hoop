Sapphire
=======
[![Build Status](https://travis-ci.org/amerobin/sapphire.svg)](https://travis-ci.org/amerobin/sapphire)  [![Join the chat at https://gitter.im/amerobin/sapphire](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/amerobin/sapphire?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


[![Join the chat at https://gitter.im/amerobin/sapphire](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/amerobin/sapphire?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Cocoa & UIKit for Crystal Lang

```crystal
require "./src/sapphire"
include Sapphire

username_text_field =  NSTextField.new NSRect.new(0, 170, 200, 20).to_objc
password_text_field = NSTextField.new NSRect.new(0, 150, 200, 20).to_objc
login_button = NSButton.new NSRect.new(0,150,100,50).to_objc
login_button.set_title = "Login"

puts login_button.title
```

## Screenshot
# ![Screenshot](https://raw.githubusercontent.com/0x73/sapphire/master/assets/example_app.png)

Thanks to the broken [Crocoa](https://github.com/manastech/crocoa)
=======

Contributing
============

1. Fork it ( https://github.com/0x73/sapphire/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
