component extends="mxunit.framework.TestCase"{

	binDir = expandPath("/HybridCFJava/java/bin");
	jarDir = expandPath("/HybridCFJava/java/lib");
	binaries = directoryList(jarDir);
	arrayAppend(binaries,binDir);
	javaloader = createObject("component","javaloader.JavaLoader").init(binaries,true);
	javaloader.init(binaries);

}
