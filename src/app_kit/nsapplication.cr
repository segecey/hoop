module Hoop
  class NSApplication < NSObject
    register_class

    objc_init_method "sharedApplication", "shared_application"

    objc_method "run"
    objc_method "setActivationPolicy:", ["NSApplicationActivationPolicy"], "BOOL", "activation_policy="
    objc_method "activateIgnoringOtherApps:", ["BOOL"], "void", "activate_ignoring_other_apps="

    objc_method "setMainMenu:", ["NSMenu"], "void", "main_menu="
  end

  NSApp = NSApplication.shared_application
end
