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
end

hoop_lib = HoopLib.new
hoop_lib.test
hoop_lib.block_test ->(x : Pointer(UInt8)) {
  y = x.as(HoopLib)
  y.test
  return 1
}
