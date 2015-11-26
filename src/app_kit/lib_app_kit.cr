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


  enum NSProgressIndicatorStyle : NSEnum
    NSProgressIndicatorBarStyle = 0,
    NSProgressIndicatorSpinningStyle = 1
  end

  enum NSStringEncoding
    NSASCIIStringEncoding = 1,
    NSNEXTSTEPStringEncoding = 2,
    NSJapaneseEUCStringEncoding = 3,
    NSUTF8StringEncoding = 4,
    NSISOLatin1StringEncoding = 5,
    NSSymbolStringEncoding = 6,
    NSNonLossyASCIIStringEncoding = 7,
    NSShiftJISStringEncoding = 8,
    NSISOLatin2StringEncoding = 9,
    NSUnicodeStringEncoding = 10,
    NSWindowsCP1251StringEncoding = 11,
    NSWindowsCP1252StringEncoding = 12,
    NSWindowsCP1253StringEncoding = 13,
    NSWindowsCP1254StringEncoding = 14,
    NSWindowsCP1250StringEncoding = 15,
    NSISO2022JPStringEncoding = 21,
    NSMacOSRomanStringEncoding = 30,
    NSUTF16StringEncoding = NSUnicodeStringEncoding,
    NSUTF16BigEndianStringEncoding = 90000100,
    NSUTF16LittleEndianStringEncoding = 94000100,
    NSUTF32StringEncoding = 8c000100,
    NSUTF32BigEndianStringEncoding = 98000100,
    NSUTF32LittleEndianStringEncoding = 9c000100
  end
  enum NSURLRequestCachePolicy
    NSURLRequestUseProtocolCachePolicy = 0,
    NSURLRequestReloadIgnoringLocalCacheData = 1,
    NSURLRequestReloadIgnoringLocalAndRemoteCacheData = 4,
    NSURLRequestReloadIgnoringCacheData = NSURLRequestReloadIgnoringLocalCacheData,
    NSURLRequestReturnCacheDataElseLoad = 2,
    NSURLRequestReturnCacheDataDontLoad = 3,
    NSURLRequestReloadRevalidatingCacheData = 5
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

  fun ns_rect_fill = NSRectFill(LibCF::Rect)

  fun force : Void
end
