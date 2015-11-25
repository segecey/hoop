require "./../src/hoop"

include Hoop


NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc


window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.set_background_color = NSColor.white_color.to_objc
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

$username_text_field = NSTextField.new(NSRect.new(50, 600, 600, 50).to_objc)
$username_text_field.set_font = (NSFont.bold_system_font_of_size = 30.0).to_objc
window.content_view << $username_text_field.to_objc

$password_text_field = NSTextField.new(NSRect.new(50, 530, 600, 50).to_objc)
$password_text_field.set_font = (NSFont.bold_system_font_of_size = 30.0).to_objc
window.content_view << $password_text_field.to_objc

class NotificationHandler < NSObject
  export_class
  def notification_receive notification
    ns_log "notification received"
    alert  = NSAlert.new
    alert.add_button_with_title = "Hello from NotificationCenter"
    alert.set_message_text = "Notification Center !!1"
    alert.run_modal
  end

  export "notification_receive", "notificationReceive:", "v@:@"
end


NSNotificationCenter.default_center.add_observer NotificationHandler.new.to_objc, "notificationReceive:".to_sel.to_objc, "hoop_test", nil

class LoginHandler < NSObject
  export_class
  @@default_username = "sdev"
  @@default_password = "sdev"

  def login_action
    username = $username_text_field.value
    password = $password_text_field.value

    if "#{username}" == "#{@@default_username}" && "#{password}" == "#{@@default_password}"
      alert_button_title = "Tamam"
      alert_message = "Giriş başarılı"
    else
      alert_button_title = "Tamam"
      alert_message = "Kullanıcıadı veya şifre yanlış !"
    end
    ns_log "#{@@default_username}/#{@@default_password}"
    ns_log "#{password}/#{username}"

    alert  = NSAlert.new
    alert.add_button_with_title = alert_button_title
    alert.set_message_text = alert_message
    alert.run_modal

    NSNotificationCenter.default_center.post_notification_with_user_info "hoop_test", nil, nil

  end
  export "login_action"
end

$login_button = NSButton.new(NSRect.new(50, 460, 600, 50).to_objc)
$login_button.set_title = "Giriş Yap"
$login_button.target = LoginHandler.new.to_objc
$login_button.action = "login_action".to_sel.to_objc
window.content_view << $login_button.to_objc




ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run
