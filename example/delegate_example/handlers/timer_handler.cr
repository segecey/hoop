class TimerHandler < NSObject
  export_class
  def timer_action
    ns_log "timer action called"
  end
  export "timer_action"
end
