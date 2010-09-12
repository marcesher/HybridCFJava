component extends="HybridCFJava.tests.BaseTestCase"{
	function setUp(){
		googleRunner = javaloader.create("webdriver.RunGoogle").init();
	}
	function tearDown(){

	}

	function stuff(){
		driver = googleRunner.execute();
	}

}
