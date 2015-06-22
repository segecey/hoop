require "compiler/crystal/**"

include Crystal

class MyVisitor < Visitor
  def initialize(@class_name)
    @str = StringIO.new
  end

  def to_s(io : IO)
    io << @str
    io << "# test"
  end

  def visit(node : Def)
    l "def #{node.name}"
    # node.args.each do |arg|
    # end
    l node.body
    l "end"

    method_name = node.name
    selector = method_name
    types_encoding = "v@:"

    l "$x_#{@class_name}_#{method_name}_imp = ->(obj : UInt8*, _cmd : LibObjC::SEL) {\n\
      ptr = LibObjC.objc_getAssociatedObject(obj, $x_#{@class_name}_assoc_key)\n\
      if ptr.nil?\n\
        # if there is no associated object, it was created by [[alloc] init] and\n\
        # there is no crystal object that corresponds to obj\n\
        crystal_obj = #{@class_name}.new(obj)\n\
        LibObjC.objc_setAssociatedObject(obj, $x_#{@class_name}_assoc_key, Pointer(UInt8).new(crystal_obj.object_id), LibObjC::AssociationPolicy::ASSIGN)\n\
      else\n\
        crystal_obj = ptr as #{@class_name}\n\
      end\n\
      # TODO getAssociatedObject for params\n\
      crystal_obj.#{method_name}()\n\
    }\n\
    LibObjC.class_addMethod($_#{@class_name}_classPair, #{selector.inspect}.to_sel.to_objc, $x_#{@class_name}_#{method_name}_imp.pointer as LibObjC::IMP, #{types_encoding.inspect})\n\
    "

    false
  end

  def visit(node : Nop)
  end

  def visit(node : ASTNode)
    raise "Unexpected node: #{node}"
  end

  def l(s)
    @str << s << "\n"
  end
end

class_name, code = ARGV
node = Parser.parse(code.gsub(/\\n/, "\n"))
visitor = MyVisitor.new(class_name)
node.accept visitor
visitor.to_s(STDOUT)
