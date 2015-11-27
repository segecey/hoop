class SecondViewController < NSViewController
  export_class
  def view_did_load
    self.super_view_did_load
    view = self.view as NSView
    ns_log "second view controller !!!123212"
    image_view = (view.view_with_tag = 1) as NSImageView
  end

  export "view_did_load", "viewDidLoad"
end
