require "./nsobject"

module Hoop
  class NSDictionary < NSObject
    register_class
    objc_method "objectForKey:", ["NSString"], "id", "object_for_key"
    def test
    	val = self.object_for_key "userId"
    	klass = NSClass.new(LibObjC.objc_msgSend(val.to_objc, "class".to_sel.to_objc).as(LibObjC::Class))
    end
  end
end
