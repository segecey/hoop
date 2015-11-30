require "./nsobject"

module Hoop
  class NSAlert < NSObject
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "addButtonWithTitle:", ["NSString"], "void", "add_button_with_title="
    objc_method "setMessageText:", ["NSString"], "void", "set_message_text="
    objc_method "runModal", nil, "void", "run_modal"
  end
end
