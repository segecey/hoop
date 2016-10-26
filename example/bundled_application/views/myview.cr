class MyView < NSView
  export_class

  def draw_rect(rect)
    ns_log "draw_rectttttt !!! YAYYYY !"
  end

  export "draw_rect", "drawRect:", "v@:@"
end