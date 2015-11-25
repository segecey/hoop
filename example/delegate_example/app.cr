require "../../src/hoop.cr"
include Hoop


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
		
		ns_log "button_clicked!!1"
	end

	export "view_did_load", "viewDidLoad"
	export "example_button_action", "exampleButtonAction"
end

class MyAppDelegate < NSObject
	export_class
  #LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
		NSTimer.scheduled_timer_with_time_interval 1.0, TimerHandler.new.to_objc, "timer_action".to_sel.to_objc, nil, true
    ns_log "didFinishLaunching !!1"
  end

  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
