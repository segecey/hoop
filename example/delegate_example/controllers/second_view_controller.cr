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

    button2 = view.view_with_tag = 3
    button2 = button2 as NSButton
    button2.target = self.to_objc
    button2.action = "openWebViewController".to_sel.to_objc
  end

  def open_table_view_controller
    self.perform_segue_with_identifier "tableView", nil.to_objc
  end

  def open_web_view_controller
    self.perform_segue_with_identifier "webViewId", nil.to_objc
  end

  export "open_table_view_controller", "openTableViewController"
  export "open_web_view_controller", "openWebViewController"
  export "view_did_load", "viewDidLoad"
end
