require "../../src/hoop.cr"
include Hoop

class MyAppDelegate < NSObject
	export_class
  LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
    ns_log "didFinishLaunching !!1"
		alert  = NSAlert.new
    alert.add_button_with_title = "Okay"
    alert.set_message_text = "Application is started !!1"
    alert.run_modal
  end
  export did_finish_launching, "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
