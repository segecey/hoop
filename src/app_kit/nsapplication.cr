module Hoop
  class NSApplication < NSObject
    register_class
    init_method "sharedApplication", "shared_application"
    method "run"
    method "setActivationPolicy:", ["NSApplicationActivationPolicy"], "BOOL", "activation_policy="
    method "activateIgnoringOtherApps:", ["BOOL"], "void", "activate_ignoring_other_apps="
    method "setMainMenu:", ["NSMenu"], "void", "main_menu="
  end

  NSApp = NSApplication.shared_application
end
