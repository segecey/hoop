require "./../src/hoop"

include Hoop

@[Link(ldflags: "#{__DIR__}/../HoopLib/HoopLib/hoop_lib.a")]
lib LibHoop
  fun setup : Int32
end

LibHoop.setup

class HoopLib < NSObject
  register_class
  objc_method "init", nil, "instancetype", "initialize"
  objc_method "test", nil, "void", "test"
  objc_method "blockTest:", ["id"], "void", "block_test"
  objc_method "setTestText:", ["NSString"], "void", "set_test_text"
  objc_method "testText", nil, "NSString", "get_test_text"
end

hoop_lib = HoopLib.new
hoop_lib.set_test_text "test text"
hoop_lib.test
hoop_lib.block_test ->(x : UInt8*, y : UInt8*) {
  x = HoopLib.new(x)
  y = NSString.new(y)
  ns_log y
  ns_log x.get_test_text
  return 1
}
