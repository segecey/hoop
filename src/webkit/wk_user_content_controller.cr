module Hoop
  class WKUserContentController < NSObject
    register_class

    objc_method "userScripts", nil, "NSArray", "user_scripts"
    objc_method "addUserScript:", ["WKUserScript"], "void", "add_user_script"
    objc_method "removeAllUserScripts", nil, "void", "remove_all_user_scripts"
    objc_method "removeScriptMessageHandlerForName:", ["NSString"], "void", "remove_script_message_handler_for_name"
  end
end
