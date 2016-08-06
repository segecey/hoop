@[Link("objc")]
lib LibObjC
type SEL = Void*
  type Class2 = UInt8*
  alias IMP = Void*
  alias IMPAlloc = Pointer(UInt8), LibObjC::SEL -> UInt8*
  alias IMPAllocWithZone = Pointer(UInt8), LibObjC::SEL, Pointer(UInt8) -> UInt8*
  type NSInteger = UInt64*

  type Protocol = Void*

  struct ObjcClass; end

  struct ObjcClass
    isa : ObjcClass*
    super_class : ObjcClass*
  end

  struct ObjcIvar; end

  struct ObjcIvar
    ivar_name : UInt8*
    ivar_type : UInt8*
    ivar_offset : UInt32*
  end

  type Ivar = ObjcIvar

  alias Class = ObjcClass*
  type Method = Void*

  struct ObjcMethodDescription
    name : SEL
    types : UInt8*
  end

  struct ObjcPropertyAttribute
    name : UInt8*
    value : UInt8*
  end

  fun objc_getClass(UInt8*) : Class
  fun object_getClass(UInt8*) : Class
  fun class_getName(Class) : UInt8*

  fun objc_getClassList(Class*, UInt64) : UInt64
  fun class_getSuperclass(Class) : Class

  fun objc_msgSend(UInt8*, SEL, ...) : UInt8*

  fun sel_registerName(UInt8*) : SEL
  fun sel_getName(SEL) : UInt8*

  fun objc_allocateClassPair(Class, UInt8*, UInt32) : Class
  fun objc_registerClassPair(Class) : Void

  enum AssociationPolicy : Int64
    ASSIGN           =     0x0u64,
    RETAIN_NONATOMIC =     0x1u64,
    COPY_NONATOMIC   =     0x3u64,
    RETAIN           = 0x01401u64,
    COPY             = 0x01403u64
  end
  fun objc_getAssociatedObject(UInt8*, UInt8*) : UInt8*
  fun objc_setAssociatedObject(UInt8*, UInt8*, UInt8*, AssociationPolicy) : Void

  fun class_addProperty(Class, UInt8*, ObjcPropertyAttribute*, UInt8)
  fun class_getProperty(Class, UInt8*) : LibObjC::ObjcPropertyAttribute
  fun class_addMethod(Class, SEL, IMP, UInt8*) : UInt8
  fun class_getInstanceVariable(Class, UInt8*) : Ivar
  fun class_getClassVariable(Class, UInt8*) : Ivar
  fun object_setInstanceVariable(UInt8*, UInt8*, UInt8*) : Ivar
  fun object_getInstanceVariable(UInt8*, UInt8*, UInt8**) : Ivar

  fun class_replaceMethod(UInt8*, SEL, IMP, UInt8*) : IMP
  fun class_copyMethodList(Class, UInt32*) : Method*
  fun method_getName(Method) : SEL
  fun method_copyArgumentType(Method, UInt64) : UInt8*
  fun method_copyReturnType(Method) : UInt8*
  fun method_getNumberOfArguments(Method) : UInt64
  fun method_getTypeEncoding(Method) : UInt8*
  fun method_getDescription(Method) : ObjcMethodDescription*
  fun method_getImplementation(Method) : IMPAllocWithZone
  fun method_getImplementationAlloc = method_getImplementation(Method) : IMPAlloc
  fun method_setImplementation(Method, IMP) : IMP
  fun method_exchangeImplementations(Method, Method) : Void

  fun class_getMethodImplementation(Class, SEL) : IMPAlloc
  fun class_getInstanceMethod(Class, SEL) : Method
  fun class_getClassMethod(Class, SEL) : Method

  fun objc_getProtocol(UInt8*) : Protocol
  fun class_addProtocol(Class, Protocol) : UInt8
end
