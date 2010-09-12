<cfset loader = application.loader>

<!--- run it --->
<h1>Hello!</h1>

<h2>Echo example</h2>
<cfset hello = loader.create("hello.Hello")>
<cfoutput>#hello.echo("marc")#</cfoutput>

<h2>FileNameFilter example</h2>
<cfset searchDir = getDirectoryFromPath(getCurrentTemplatePath())>
<cfset jDir = loader.create("java.io.File").init(searchDir)>
<cfset thirdLetterFilter = loader.create("comparable.ThirdLetterFilter").init("p")>
<cfset files = jDir.list(thirdLetterFilter)>
<cfdump var="#files#">

<h2>Using Java Generics</h2>
<cfset genericMethods = loader.create("generics.GenericMethods")>
<cfoutput>

	#genericMethods.echo("hello")#
	<br>
	
	<cfset list = createObject("java", "java.util.ArrayList")>
	<cfset list.add("hi")>
	<cfset list.add("boo")>
	
	<cfset ilist = createObject("java", "java.util.ArrayList")>
	<cfset ilist.add(1)>
	<cfset ilist.add(2)>
	
	
	
	Echo a list: #genericMethods.echoList(list)#
	<br>
	Same list, passed to method expecting ArrayList<String>: #genericMethods.echoGenericStringList(list)#
	<br>
	New List with only ints, passed to method expecting ArrayList<Integer>: #genericMethods.echoGenericIntegerList(ilist)#
	<br>
	<cfset iList.add("foo")>
	Method expecting int list gladly takes list with non-ints: #genericMethods.echoGenericIntegerList(iList)#

</cfoutput>