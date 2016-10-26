require "./req"		
require "./views/*"		
require "./controllers/*"		
 		
class HoopDelegate < NSObject		
  #add_delegate HoopDelegate, "NSApplicationDelegate"		
  export_class		
  action "did_finish_launching", "notification", "applicationDidFinishLaunching:" do		
    ns_log "didFinishLaunching !!1"		
  end		
end		
 		
Helper.start_app
