class MyView < NSView
  export_class

  def draw_rect(rect)
    ns_log "draw rect"
  end

  export "draw_rect", "drawRect:", "v@:@"
end
