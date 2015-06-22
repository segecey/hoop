def ns_log(format : String|NSString)
    LibCF.nslog(format.to_nsstring.to_objc)
end