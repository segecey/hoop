class SecondViewController < NSViewController
  export_class
  def view_did_load
    self.super_view_did_load
    view = self.view as NSView
    ns_log "second view controller !!!123212"

    button = view.view_with_tag = 2
    button = button as NSButton
    button.target = self.to_objc
    button.action = "openTableViewController".to_sel.to_objc

  end

  def open_table_view_controller
    self.perform_segue_with_identifier "tableView", nil.to_objc
  end

  export "open_table_view_controller", "openTableViewController"
  export "view_did_load", "viewDidLoad"
end
