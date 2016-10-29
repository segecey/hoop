class MyView < NSView
  export_class

  action "draw_rect", "rect", "drawRect:" do
    ns_log "draw_rectttttt !!! YAYYYY !"
    color = NSColor.color_with_srgb_red 255, 255, 255, 0
    ns_log "#{rect}"
  end
end
