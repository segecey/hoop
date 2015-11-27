$list = NSMutableArray.new
$list.add_string "One"
$list.add_string "Two"
$list.add_string "Three"

class TableViewController < NSViewController
  export_class
  LibObjC.class_addProtocol(TableViewController.nsclass.obj, LibObjC.objc_getProtocol("NSTableViewDataSource"))
  LibObjC.class_addProtocol(TableViewController.nsclass.obj, LibObjC.objc_getProtocol("NSTableViewDelegate"))
  property :list

  def view_did_load
    ns_log "table view controller !!!123212"
    view = self.view as NSView
    table_view = view.view_with_tag = 111
    table_view = table_view as NSTableView
    table_view.set_delegate = self.to_objc
    table_view.set_data_source = self.to_objc
  end

  def number_of_rows_in_table_view table_view
    return $list.count
  end

  def object_value_for_table_column table_view, table_column, row
    ns_log "#{table_column}"
    return 1
  end

  def view_for_table_column table_view, table_column, row
    view = NSView.new NSRect.new(50.00, 50.00, 100, 70.00).to_objc
    image_view = NSImageView.new NSRect.new(10.0, 20.0, 30.00, 30.00).to_objc
    image_view.set_image = (NSImage.init_with_image "logo.png").to_objc
    view << image_view.to_objc
    view.to_objc
  end

  def height_of_row table_view, row
    return 70.00.to_cgfloat
  end

#- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row;
#- (nullable NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row NS_AVAILABLE_MAC(10_7);
  export "view_did_load", "viewDidLoad"
  export "number_of_rows_in_table_view", "numberOfRowsInTableView:", "v@:@"
  export "view_for_table_column", "tableView:viewForTableColumn:row:", "v@:@:@"
  export "height_of_row", "tableView:heightOfRow:", "v@:@:"
end
