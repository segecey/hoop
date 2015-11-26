module HoopExample
  class Main
    def initialize(window)
      @window = window
      setup()
    end

    def setup
      welcome_label = NSTextField.new(NSRect.new(10, 650, 100, 20).to_objc)
      welcome_label.set_editable = false
      welcome_label.value = "Hello, world !"
      @window.content_view << welcome_label.to_objc
    end
  end
end
