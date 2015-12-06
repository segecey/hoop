require "./req"
require "./views/*"
require "./controllers/*"

class HoopDelegate < NSObject
  add_delegate HoopDelegate, "NSApplicationDelegate"
  export_class
  def did_finish_launching(notification)
    ns_log "didFinishLaunching !!1"
  end
  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end


Helper.start_app
