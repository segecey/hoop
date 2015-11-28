class ViewController < NSViewController
	export_class
	@@username_text_field
	@@password_text_field
	@@text_view

	def view_did_load
    self.super_view_did_load
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
		username_text_field = @@username_text_field as NSTextField
		password_text_field = @@password_text_field as NSTextField


    username = "#{username_text_field.value}"
    password = "#{password_text_field.value}"


    ns_log "#{$login_url}?username=#{username}&password=#{password}"
    url = NSURL.url_with_string "#{$login_url}?username=#{username}&password=#{password}"
    req = NSMutableURLRequest.new url.to_objc, LibAppKit::NSURLRequestCachePolicy::NSURLRequestUseProtocolCachePolicy, 60.0
    conn = NSURLConnection.new req.to_objc, self.to_objc
    conn.start
	end


  def conncetion_did_fail_with_error conncetion, error
      alert = NSAlert.new
      alert.add_button_with_title = "OK"
      alert.set_message_text = "Connection error !"
      alert.run_modal
  end

  def connection_did_finish_loading connection
    ns_log "connection finished"
  end

  def conncetion_did_receive_response connection, response
    response = response as NSURLResponse
  end

  def conncetion_did_receive_data connection, data
    result = NSJSONSerialization.json_object_with_data data.to_objc, LibCF::NSJSONReadingOptions::KNilOptions, nil.to_objc
    error = result.object_for_key "message"

		text_view = view.view_with_tag = 333
		text_view = text_view as NSTextField
		text_view.value = "#{error}"
		text_view.set_hidden = false

		if  "#{error}" == "success login"
			self.perform_segue_with_identifier "testIden", nil.to_objc
		else
			alert = NSAlert.new
      alert.add_button_with_title = "OK"
      alert.set_message_text = "#{error}"
      alert.run_modal
		end

  end

	export "view_did_load", "viewDidLoad"
	export "example_button_action", "exampleButtonAction"
  export "conncetion_did_fail_with_error", "connection:didFailWithError:", "v@:v@"
  export "connection_did_finish_loading","connectionDidFinishLoading:", "v@:@"
  export "conncetion_did_receive_response", "connection:didReceiveResponse:", "v@:v@"
  export "conncetion_did_receive_data", "connection:didReceiveData:", "v@:v@"
end
