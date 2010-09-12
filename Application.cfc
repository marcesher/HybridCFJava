component{
	this.name = "HybridCFJava";
	this.mappings["/javaloader"] = getDirectoryFromPath(getCurrentTemplatePath()) & "/javaloader";
	request.mappings = this.mappings;
	
	
	function onApplicationStart(){
		binDir = expandPath("java/bin");
		libDir = expandPath("java/lib");
		jars = directoryList(libDir);
		arrayAppend(jars,binDir);
		application.loader = createObject("component","javaloader.JavaLoader").init(jars);
	}
	
	function onRequestStart(){
		if( structKeyExists( url, "reload" ))
		{
			onApplicationStart();
		}
	}
	
}
