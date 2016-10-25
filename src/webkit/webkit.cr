@[Link(framework: "WebKit")]
lib WebKit
  enum WKSelectionGranularity : NSEnum
    WKSelectionGranularityDynamic,
    WKSelectionGranularityCharacter
  end

  enum WKUserScriptInjectionTime : NSEnum
    WKUserScriptInjectionTimeAtDocumentStart,
    WKUserScriptInjectionTimeAtDocumentEnd
  end
  
  #fun force : Void*
end
