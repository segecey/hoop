def ns_log(format)
	var_type = typeof(format)
	if format.is_a?(Int32) || format.is_a?(Int64) || format.is_a?(Float32) || format.is_a?(Float64)
		LibCF.nslog("#{format}".to_nsstring.to_objc)
	elsif format.is_a?(NSString) || format.is_a?(String)
		LibCF.nslog(format.to_nsstring.to_objc)
	elsif format.is_a?(Char)
		LibCF.nslog("#{format}".to_nsstring.to_objc)
	else
		LibCF.nslog("#{typeof(format)}".to_nsstring)
	end
end
