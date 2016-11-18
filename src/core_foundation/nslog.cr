macro ns_log(*args)
	{% if args.size > 1 %}
		format = {{"#{args[0]}"}}
		format = format.gsub("%d", "%@")
		LibCF.nslog(format.to_nsstring
			{% for i in 1...args.size %}
        		,
        	if {{"#{args[i]}".id}}.is_a?(Int32) || {{"#{args[i]}".id}}.is_a?(Int64) || {{"#{args[i]}".id}}.is_a?(Float32) || {{"#{args[i]}".id}}.is_a?(Float64)
        		"#{{{args[i]}}}".to_nsstring
	        elsif {{args[i]}}.is_a?(NSString) || {{args[i]}}.is_a?(String)
	        	"#{{{args[i]}}}".to_nsstring
	        elsif {{args[i]}}.is_a?(Char)
	        	"#{{{args[i]}}}".to_nsstring
	        elsif {{args[i]}}.is_a?(Bool)
				"#{{{args[i]}} ? 1 : 0}".to_nsstring
			else
				"#{typeof({{args[i]}})}".to_nsstring
			end
        	{% end %})
	{% else %}
		%message = {{args[0]}}
		if %message.is_a?(Int32) || %message.is_a?(Int64) || %message.is_a?(Float32) || %message.is_a?(Float64)
			LibCF.nslog("#{%message}".to_nsstring.to_objc)
		elsif %message.is_a?(NSString) || %message.is_a?(String)
			LibCF.nslog(%message.to_nsstring.to_objc)
		elsif %message.is_a?(Char)
			LibCF.nslog("#{%message}".to_nsstring.to_objc)
		elsif %message.is_a?(Bool)
			LibCF.nslog("#{%message ? 1 : 0}".to_nsstring.to_objc)
		else
			LibCF.nslog("#{typeof(%message)}".to_nsstring)
		end
	{% end %}
end
