require "../../src/hoop.cr"
include Hoop

$login_url = "http://sedat.ninja/test.php"

class TimerHandler < NSObject
  export_class
  def timer_action
    ns_log "timer action called"
  end
  export "timer_action"
end

class MyView < NSView
	export_class

	def example_button_action
		ns_log "button clicked"
	end

	export "example_button_action", "exampleButtonAction"
end


class ViewController < NSViewController
	export_class
  LibObjC.class_addProtocol(ViewController.nsclass.obj, LibObjC.objc_getProtocol("NSURLConnectionDelegate"))
	@@username_text_field
	@@password_text_field

	def view_did_load
		view = self.view as NSView

    @@username_text_field = view.view_with_tag = 1
		@@username_text_field = @@username_text_field as NSTextField

		@@password_text_field = view.view_with_tag = 2
		@@password_text_field = @@password_text_field as NSTextField

		sad = view.view_with_tag = 123
		sad = sad as NSButton
		sad.target = self.to_objc
		sad.action = "exampleButtonAction".to_sel.to_objc
	end

	def example_button_action
		username_text_field = @@username_text_field as NSTextField
		password_text_field = @@password_text_field as NSTextField

    username = "#{username_text_field.value}"
    password = "#{password_text_field.value}"

    self.perform_segue_with_identifier "test", nil
    ns_log "#{$login_url}?username=#{username}&password=#{password}"
    url = NSURL.url_with_string "#{$login_url}?username=#{username}&password=#{password}"
    req = NSMutableURLRequest.new url.to_objc, LibAppKit::NSURLRequestCachePolicy::NSURLRequestUseProtocolCachePolicy, 60.0
    conn = NSURLConnection.new req.to_objc, self.to_objc
    conn.start
	end


  def conncetion_did_fail_with_error conncetion, error
      alert = NSAlert.new
      alert.add_button_with_title = "OK"
      alert.set_message_text = "Connection error !"
      alert.run_modal
  end

  def connection_did_finish_loading connection
    ns_log "connection finished"
  end

  def conncetion_did_receive_response connection, response
    response = response as NSURLResponse
  end

  def conncetion_did_receive_data connection, data
    result = NSJSONSerialization.json_object_with_data data.to_objc, LibCF::NSJSONReadingOptions::KNilOptions, nil
    error = result.object_for_key "message"
    ns_log "message: #{error}"
  end
	export "view_did_load", "viewDidLoad"
	export "example_button_action", "exampleButtonAction"
  export "conncetion_did_fail_with_error", "connection:didFailWithError:", "v@:v@"
  export "connection_did_finish_loading","connectionDidFinishLoading:", "v@:@"
  export "conncetion_did_receive_response", "connection:didReceiveResponse:", "v@:v@"
  export "conncetion_did_receive_data", "connection:didReceiveData:", "v@:v@"
end

class MyAppDelegate < NSObject
	export_class
  #LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
		#NSTimer.scheduled_timer_with_time_interval 1.0, TimerHandler.new.to_objc, "timer_action".to_sel.to_objc, nil, true
    ns_log "didFinishLaunching !!1"
  end

  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
