require "./NSResponder"

module Hoop
  class NSViewController < NSResponder
    register_class
    objc_method "init", nil, "id", "initialize"
    objc_method "view", nil, "NSView", "view"
    objc_method "performSegueWithIdentifier:sender:", ["NSString", "id"], "void", "perform_segue_with_identifier"

    # objc_method "viewDidLoad", nil, "void", "view_did_load"

    def init_with_frame(frame)
      Hoop.send_msg(LibObjC.class_getSuperclass(LibObjC.objc_getClass(self.to_objc)).as(Pointer(UInt8)), "initWithFrame:", frame.to_objc)
    end

    def super_view_did_load
      Hoop.send_msg(LibObjC.class_getSuperclass(LibObjC.objc_getClass(self.to_objc)).as(Pointer(UInt8)), "viewDidLoad", nil.to_objc)
    end
  end
end
