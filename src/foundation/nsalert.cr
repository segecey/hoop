require "./nsobject"

module Hoop
  class NSAlert < NSObject
    register_class
    method "init", nil, "id", "initialize"
    method "addButtonWithTitle:", ["NSString"], "void", "add_button_with_title="
    method "setMessageText:", ["NSString"], "void", "set_message_text="
    method "runModal", nil, "void", "run_modal"
  end
end
