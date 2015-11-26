class ViewController < NSViewController
	export_class
	@@username_text_field
	@@password_text_field

	def view_did_load

		view = self.view as NSView
    @@username_text_field = view.view_with_tag = 1
		@@username_text_field = @@username_text_field as NSTextField

		@@password_text_field = view.view_with_tag = 2
		@@password_text_field = @@password_text_field as NSTextField

		sad = view.view_with_tag = 123
		sad = sad as NSButton
		sad.target = self.to_objc
		sad.action = "exampleButtonAction".to_sel.to_objc
	end

	def example_button_action
		ns_log "hello from button action"
	end

	export "view_did_load", "viewDidLoad"
	export "example_button_action", "exampleButtonAction"
end
