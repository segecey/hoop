@[Link(framework: "AppKit")]
lib LibAppKit
  enum NSApplicationActivationPolicy : NSEnum
    Regular,
    Accessory,
    Prohibited

    def to_objc
      self
    end
  end

  enum NSWindowMask : NSEnum
    Borderless = 0,
    Titled = 1 << 0,
    Closable = 1 << 1,
    Miniaturizable = 1 << 2,
    Resizable = 1 << 3,
    TexturedBackground = 1 << 8

    def to_nsuinteger
      self
    end

    def to_objc
      self
    end
  end

  enum NSBackingStoreType : NSEnum
    Retained     = 0,
    Nonretained  = 1,
    Buffered     = 2

    def to_objc
      self
    end
  end

  fun ns_run_alert_panel = NSRunAlertPanel(LibCF::CFString, LibCF::CFString,
                               LibCF::CFString, LibCF::CFString, LibCF::CFString, ...);

  fun ns_application_main = NSApplicationMain(UInt32, UInt8**) : UInt32

  fun force : Void
end
