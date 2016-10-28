module Hoop
  abstract class NSObject
    macro objc_class
      def initialize(@obj : UInt8*)
        super(@obj)
      end
    end

    macro objc_method_arg(value, type)
      {% if type == "NSUInteger" %}
        {{value.id}}.to_nsuinteger
      {% elsif type == "BOOL" %}
        {{value.id}}
      {% elsif type == "SEL" %}
        {{value.id}}
      {% elsif type == "NSString" %}
        {{value.id}}.to_nsstring
      {% elsif type == "const_char_ptr" %}
        {{value.id}}.to_unsafe
      {% else %}
        {{value.id}}
      {% end %}
    end

    macro objc_init_method(method_name, crystal_method = nil)
      {{ "##{crystal_method ||= method_name}".id }}
      def self.{{crystal_method.id}}
        self.new(nsclass.send_msg({{method_name}}))
      end
    end

    macro init_method(method_name, crystal_method = nil)
      {{ "##{crystal_method ||= method_name}".id }}
      def self.{{crystal_method.id}}
        self.new(nsclass.send_msg({{method_name}}))
      end
    end

    macro objc_method_helper(receiver, method_name, args = nil, returnType = nil, crystal_method = nil)
      {{ "##{crystal_method ||= method_name}".id }}
      {{ "##{args ||= [] of Symbol}".id }}
      def {{crystal_method.id}}({% for i in 0...args.size %}{% if i > 0 %} , {% end %} {{"arg#{i}".id}} {% if args[i] != :id && args[i] != :NSUInteger %}{% if args[i] == :BOOL %}: Bool{% end %}{% if args[i] == :NSString %}: String|NSString {% end %}{% if args[i] == :SEL %}: Selector|String? {% end %}{% if args[i] == :const_char_ptr %}: String {% end %}{% end %}{% end %})

        res = Hoop.send_msg({{receiver}}, {{method_name}}
          {% for i in 0...args.size %}
            , objc_method_arg({{"arg#{i}".id}}, {{args[i]}})
          {% end %}
        )

        {% if crystal_method == "initialize" %}
          @obj = res
        {% elsif returnType == "NSUInteger" %}
          res.address
        {% elsif returnType == "BOOL" %}
          res.address != 0
        {% elsif returnType == "unichar" %}
          res.address.chr
        {% elsif returnType == "void" || returnType == nil %}
          self
        {% elsif returnType == "id" %}
          klass = NSClass.new(LibObjC.objc_msgSend(res, "class".to_sel.to_objc).as(LibObjC::Class))
          if klass.name == "__NSCFString"
            NSString.new(res)
          elsif klass.name == "__NSCFNumber"
            NSNumber.new(res)
          elsif klass.name == "NSButton"
            NSButton.new(res)
          elsif klass.name == "NSTextField"
            NSTextField.new(res)
          elsif klass.name == "NSImageView"
            NSImageView.new(res)
          elsif klass.name == "NSTableView"
            NSTableView.new(res)
          elsif klass.name == "NSTableColumn"
            NSTableColumn.new(res)
          elsif klass.name == "NSImage"
            NSImage.new(res)
          elsif klass.name == "NSDictionary"
            NSDictionary.new(res)
          elsif klass.name == "CALayer"
            CALayer.new(res)
          elsif klass.name == "IOBluetoothDevice"
            IOBluetoothDevice.new(res)
          else
            res
          end
        {% else %}
          {{returnType.id}}.new(res)
        {% end %}
      end
    end

    macro objc_method(method_name, args = nil, returnType = nil, crystal_method = nil)
      {% if crystal_method == "initialize" %}
        objc_method_helper(nsclass.send_msg("alloc"), {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% else %}
        objc_method_helper(self.to_objc, {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% end %}
    end

    macro method(method_name, args = nil, returnType = nil, crystal_method = nil)
      {% if crystal_method == "initialize" %}
        objc_method_helper(nsclass.send_msg("alloc"), {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% else %}
        objc_method_helper(self.to_objc, {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% end %}
    end

    macro objc_static_method(method_name, args = nil, returnType = nil, crystal_method = nil)
      {{ "##{crystal_method ||= method_name}".id }}
      objc_method_helper(nsclass.obj.as(Pointer(UInt8)), {{method_name}}, {{args}}, {{returnType}}, {{"self.#{crystal_method.id}"}})
    end

    macro static_method(method_name, args = nil, returnType = nil, crystal_method = nil)
      {{ "##{crystal_method ||= method_name}".id }}
      objc_method_helper(nsclass.obj.as(Pointer(UInt8)), {{method_name}}, {{args}}, {{returnType}}, {{"self.#{crystal_method.id}"}})
    end

    macro register_class(objc_class_name = nil)
      def self.nsclass
        class_name = begin
          {% if objc_class_name %}
            {{objc_class_name}}
          {% else %}
            if self.to_s.includes? "Hoop::"
              self.to_s["Hoop::".size..-1]
            else
              self.to_s["".size..-1]
            end
          {% end %}
        end
        NSClass.new(class_name)
      end
    end

    macro objc_method_helper_body(receiver, method_name, args = nil, returnType = nil, crystal_method = nil)
      # TODO auto method tidy up.
      # ???? new lines breaks
      # ???? unable to extract type restriction on its own macro
      {{ "##{crystal_method ||= method_name}".id }}
      {{ "##{args ||= [] of Symbol}".id }}

      res = Hoop.send_msg({{receiver}}, {{method_name}}
        {% for i in 0...args.length %}
          , objc_method_arg({{"arg#{i}".id}}, {{args[i]}})
        {% end %}
      )

      # TODO wrap result if the class is exported from crystal and exposed to obj-c
      # ???? Posible to get all NSObject+ of the system? maybe using objc_class macro
      {% if crystal_method == "initialize" %}
        @obj = res
      {% elsif returnType == "NSUInteger" %}
        res.address
      {% elsif returnType == "BOOL" %}
        res.address != 0
      {% elsif returnType == "unichar" %}
        res.address.chr
      {% elsif returnType == "void" || returnType == nil %}
        self
      {% elsif returnType == "id" %}
        klass = NSClass.new(LibObjC.objc_msgSend(res, "class".to_sel.to_objc).as(LibObjC::Class))
        if klass.name == "__NSCFString"
          NSString.new(res)
        elsif klass.name == "NSButton"
          NSButton.new(res)
        elsif klass.name == "NSTextField"
          NSTextField.new(res)
        else
          # TODO wrap result. NSObject+ if id
          res
        end
      {% else %}
        # runtime return type check
        if {{returnType}} == "id"
          AnyObject.new(res)
        elsif {{returnType}} == "unsigned long long"
          res.address
        else
          raise "not implemented as return type #{returnType}"
        end
      {% end %}
    end

    macro objc_method(method_name, args = nil, returnType = nil, crystal_method = nil)
      {% if crystal_method == "initialize" %}
        objc_method_helper(nsclass.send_msg("alloc"), {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% else %}
        objc_method_helper(self.to_objc, {{method_name}}, {{args}}, {{returnType}}, {{crystal_method}})
      {% end %}
    end

    macro export_class(objc_class_name = nil)
      objc_class
      @@_{{@type.name.id}}_classPair = LibObjC.objc_allocateClassPair({{@type.superclass}}.nsclass.obj, "#{{{@type.name}}}", 0u32)
      LibObjC.objc_registerClassPair(@@_{{@type.name.id}}_classPair)
      @@x_{{@type.name.id}}_assoc_key = "hoop_objc"

      def self.nsclass
        NSClass.new @@_{{@type.name.id}}_classPair
      end

      def self.to_pointer
        self.nsclass.as(Pointer(UInt8))
      end


      def initialize
        initialize(Hoop.send_msg(nsclass.send_msg("alloc"), "init"))
        LibObjC.objc_setAssociatedObject(to_objc, @@x_{{@type.name.id}}_assoc_key, Pointer(UInt8).new(self.object_id), LibObjC::AssociationPolicy::ASSIGN)
      end

    end

    macro add_delegate(delegate)
      LibObjC.class_addProtocol({{@type.name.id}}.nsclass.obj, LibObjC.objc_getProtocol({{delegate}}))
    end

    macro add_delegate(klass, delegate)
      LibObjC.class_addProtocol({{klass}}.nsclass.obj, LibObjC.objc_getProtocol({{delegate}}))
    end

    macro export(method_name, selector = nil, types_encoding = nil)
      {{ "##{selector ||= method_name}".id }}
      {{ "##{types_encoding ||= "v@:"}".id }}
      x_{{@type.name.id}}_{{method_name.id}}_imp = ->(obj : UInt8*, _cmd : LibObjC::SEL {% for t, i in types_encoding[3..-1].chars %}{{", a#{i} : UInt8*".id}}{% end %}) {
        ptr = LibObjC.objc_getAssociatedObject(obj, @@x_{{@type.name.id}}_assoc_key)
        if ptr.null?
          crystal_obj = {{@type.name.id}}.new(obj)
          LibObjC.objc_setAssociatedObject(obj, @@x_{{@type.name.id}}_assoc_key, Pointer(UInt8).new(crystal_obj.object_id), LibObjC::AssociationPolicy::ASSIGN)
        else
          crystal_obj = ptr.as({{@type.name.id}})
        end
        crystal_obj.{{method_name.id}}({% for t, i in types_encoding[3..-1].chars %}{% if i > 0 %}{{",".id}}{% end %}{{"a#{i}".id}}{% end %})
      }
      LibObjC.class_addMethod(@@_{{@type.name.id}}_classPair, {{selector}}.to_sel.to_objc, x_{{@type.name.id}}_{{method_name.id}}_imp.pointer.as(LibObjC::IMP), {{types_encoding}})
    end

    macro action(action_name, params = nil, exploded_name = nil)
      {% if params != nil %}
        {{ split_params = params.split(",") }}.size
        {{ tmp_char = ":" }}
        {% if split_params.size > 1 %}
          {% for t, i in split_params %}
            {% if i == 0 %}
              {{ a = "v@:@" }}
            {% else %}
              {{ a += tmp_char }}
              {% if tmp_char == ":" %}
                {{ tmp_char = "@" }}
              {% else %}
                {{ tmp_char = ":" }}
              {% end %}
            {% end %}
          {% end %}
        {% elsif split_params.size == 1 %}
          {{ a = "v@:@" }}
        {% end %}
      {% end %}

      def {{action_name.id}}{% if params != nil %}({% for t, i in split_params %}{% if i > 0 %},{% end %}{{split_params[i].id}}{% end %}){% end %}
        {{yield.id}}
      end
      export {{action_name}}{% if exploded_name != nil %}, {{exploded_name}} {% end %}{% if params != nil %}, {{a}} {% end %}
    end

    macro class_var(variable, variable_type, is_outlet = false)

    end

    macro objc(code)
      {{ run "../support/export_method", @type.name, code }}
    end

    register_class

    def nsclass
      self.class.nsclass
    end

    def initialize(pointer : UInt8*)
      @obj = pointer
      retain
    end

    macro inherited
      objc_class
    end

    def to_id
      AnyObject.new(to_objc)
    end

    def to_objc
      @obj.not_nil!
    end

    def ==(other : NSObject)
      @obj == other.to_objc
    end

    def finalize
      release
    end

    objc_method "retain"
    objc_method "release"
    objc_static_method "alloc", nil, "id", "alloc"
    objc_method "performSelectorOnMainThread:withObject:waitUntilDone:", ["SEL", "id", "BOOL"], "void", "perform_selector_on_main_thread_with_object_wait_until_done"
  end
end
