$list = NSMutableArray.new
$list.add_string "One"
$list.add_string "Two"
$list.add_string "Three"

class TableViewController < NSViewController
  export_class

  add_delegate "NSTableViewDataSource"
  add_delegate "NSTableViewDelegate"

  property :list

  action "view_did_load", nil, "viewDidLoad" do
    ns_log "table view controller !!!123212"
    view = self.view as NSView
    table_view = view.view_with_tag = 111
    table_view = table_view as NSTableView
    table_view.set_delegate = self.to_objc
    table_view.set_data_source = self.to_objc
  end

  action "number_of_rows_in_table_view", "table_view", "numberOfRowsInTableView:" do
    return $list.count
  end

  action "view_for_table_column","table_view, table_column, row", "tableView:viewForTableColumn:row:" do
    view = NSView.new NSRect.new(50.00, 50.00, 100, 70.00).to_objc
    image_view = NSImageView.new NSRect.new(10.0, 20.0, 30.00, 30.00).to_objc
    image_view.set_image = (NSImage.image_named "logo.png").to_objc
    view << image_view.to_objc
    view.to_objc
  end

  action "height_of_row","table_view, row", "tableView:heightOfRow:" do
    return 70.00.to_cgfloat
  end
end
