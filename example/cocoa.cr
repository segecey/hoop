require "./../src/sapphire"

include Sapphire


puts NSProcessInfo.process_info.process_name

pool = NSAutoreleasePool.new

app = NSApplication.shared_application

NSRect.new 0,0,0,0

puts sizeof(NSRect)
puts sizeof(LibCF::Rect)


puts sizeof(NSPoint)
puts sizeof(LibCF::Point)

LibAppKit.ns_run_alert_panel(NSString.new("Testing") as LibCF::CFString,
          NSString.new("This is a simple test to display NSAlertPanel.") as LibCF::CFString,
                NSString.new("OK") as LibCF::CFString, nil, nil)

pool.release
