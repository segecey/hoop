module Hoop
  class WKUserContentController < NSObject
    register_class
    method "userScripts", nil, "NSArray", "user_scripts"
    method "addUserScript:", ["WKUserScript"], "void", "add_user_script"
    method "removeAllUserScripts", nil, "void", "remove_all_user_scripts"
    method "removeScriptMessageHandlerForName:", ["NSString"], "void", "remove_script_message_handler_for_name"
  end
end
